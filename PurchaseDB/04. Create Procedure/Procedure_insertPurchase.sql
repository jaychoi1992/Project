SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[insert_purchase] @Tprice money, @Tsaving money, @Titem smallint, 
@Date datetime, @Time time, @Cashier nvarchar(20), @reward int, @method_type nvarchar(30),@method_card nvarchar(4), @location nvarchar(max), @refnum nvarchar(30), @TCnum nvarchar(30)
AS
BEGIN
SET XACT_ABORT, NOCOUNT ON

BEGIN TRY 
BEGIN TRANSACTION


-- Check if already value is in the table and if table doesn't have the value, then insert value
IF NOT EXISTS (SELECT RewardID FROM PurchaseDB.dbo.Reward WHERE Reward# = @reward)
BEGIN 
INSERT INTO PurchaseDB.dbo.Reward (Reward#) VALUES (@reward)
END

--Insert rewardid as forign value in purchase Table
DECLARE @rewardid INT
SELECT @rewardid = RewardID FROM PurchaseDB.dbo.Reward r1 WHERE EXISTS (SELECT RewardID FROM PurchaseDB.dbo.Reward WHERE r1.Reward# = @reward)

-- Check if already value is in the table and if table doesn't have the value, then insert value
IF NOT EXISTS (SELECT LocationID FROM PurchaseDB.dbo.Location WHERE LocationName = @location)
BEGIN 
INSERT INTO PurchaseDB.dbo.Location (LocationName) VALUES (@location)
END

--Insert rewardid as forign value in purchase Table
DECLARE @locationid INT
SELECT @locationid = LocationID FROM PurchaseDB.dbo.[Location] l1 WHERE EXISTS (SELECT RewardID FROM PurchaseDB.dbo.Reward WHERE l1.LocationName = @location)

--Check whether Purchase_Method table have @method_type, @method_card combination in it. If not, first add @method_card into Table Cardinfo 
-- and then add newly added cardid from Cardinfo table with @method_type into Purchase_method table
IF NOT EXISTS 
(SELECT MethodType FROM PurchaseDB.dbo.Purchase_Method p INNER JOIN PurchaseDB.dbo.CardInfo c ON p.MethodCard = c.CardID 
WHERE p.MethodType = @method_type AND c.CardDigit = @method_card )
BEGIN 
INSERT INTO PurchaseDB.dbo.CardInfo (CardDigit) VALUES (@method_card)
DECLARE @cardid INT
SELECT @cardid = cardid FROM PurchaseDB.dbo.CardInfo WHERE CardDigit = @method_card
INSERT INTO PurchaseDB.dbo.Purchase_Method (MethodType, MethodCard) VALUES (@method_type, @cardid)
END

-- get methodid from Purchase_method table and put that value in @methodid
DECLARE @methodid INT
SELECT @cardid = cardid FROM PurchaseDB.dbo.CardInfo WHERE CardDigit = @method_card
SELECT @methodid = MethodID FROM PurchaseDB.dbo.Purchase_Method WHERE MethodType = @method_type AND MethodCard = @cardid


-- Insert values in table 
INSERT PurchaseDB.dbo.Purchase(Total_Price, Total_Saving, Total_item#, PurchasDate,PurchasTime, Cashier, RewardID, Purchase_Method, LocationID, Reference#, TC#)
VALUES (@Tprice, @Tsaving, @Titem, @Date, @Time, @Cashier,@rewardid, @methodid,@locationid, @refnum, @TCnum)

COMMIT TRANSACTION
END TRY 
BEGIN CATCH 
END CATCH 

END;





GO
