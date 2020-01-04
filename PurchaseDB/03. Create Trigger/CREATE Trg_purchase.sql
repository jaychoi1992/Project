CREATE TABLE PurchaseDB.dbo.PurchaseLog(

    ChangeID INT Primary Key IDENTITY(1,1),
    PurchasdID INT,
    Total_Price MONEY ,
    Total_Saving MONEY,
    Total_item# SMALLINT,
    PurchasDate DateTime,
    PurchasTime Time,
    LocationID INT,
    UpdatedAt DateTime, 
    Operation CHAR(3),
    CHECK(Operation = 'INS' OR Operation = 'DEL')
);

CREATE TRIGGER trg_purchase
ON PurchaseDB.dbo.Purchase
AFTER INSERT, DELETE
AS BEGIN

SET NOCOUNT ON
--Suppress the number of affected message printing

INSERT INTO PurchaseDB.dbo.PurchaseLog (PurchasdID, Total_Price, Total_Saving, Total_item#, PurchasDate, LocationID, UpdatedAt, Operation )

SELECT i.PurchasdID, Total_Price, Total_Saving, Total_item#, PurchasDate, LocationID, SYSDATETIME(), 'INS' FROM inserted as i 

UNION ALL 

SELECT d.PurchasdID, Total_Price, Total_Saving, Total_item#, PurchasDate, LocationID, SYSDATETIME(), 'DEL' FROM deleted as d ;

END
