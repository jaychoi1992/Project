INSERT INTO PurchaseDB.dbo.[Location]
VALUES
(NULL, NULL, 734-975-4500, 'Ann Arbor', 'WholeFood'), ('11332', NULL, 708-457-0606, '4101 N Harlem Ave. Norridge, IL 60706', 'WALGREEN'), ('07515', NULL, 773-631-3927, '7155 W Foster Ave. CHICAGO, IL 60656', 'WALGREEN')
-- ,...(rest of list)

-- enlarge data size of Column MethodType
ALTER TABLE PurchaseDB.dbo.Purchase_Method
ALTER COLUMN MethodType NVARCHAR (20)

INSERT INTO Purchase_Method
VALUES 
('Mobile Pay', 3), 
('Card Insert', 3)
-- ,...(rest of list)

INSERT INTO Product_Category
VALUES ('VEGETABLE'), ('TOFU'), ('TAKEOUT'), ('STATIONERY')
-- ,...(rest of list)

INSERT INTO PurchaseDB.dbo.Purchase(Total_Price, Total_Saving, Total_item#)
VALUES
(23.27, NULL, 1),
(25.77, 10.35, 8),
(45, NULL, 1)
-- ,...(rest of list)

INSERT INTO PurchaseDB.dbo.Product
VALUES 
 
('Bagel w/ Spread', 'DD Plain, DD CrmChz Veggie, Toasted', 0, 1, 'EA', 2.89, NULL, 2.89, NULL, 9, 'Bread'), 
('NSHK RICE', NULL, 9, 1, 'EA', 3.67, NULL, 3.67, NULL, 9, 'Rice'), 
('Chinese Chives', NULL, 8, 1.78, 'lb', 2.79, NULL, 4.9662, NULL, 1, 'Chives'), 
('Kooksoondang', NULL, 8, 2, 'EA', 4.04, NULL, 8.08, NULL, 25, 'Makgeolli '), 
('LT Peperp W/Choco', NULL, 8, 2, 'EA', 0.5, NULL, 1, 2.98, 5, 'Pepero Chocolate Covered Stick'), 
('Ns shrimp hot snck', NULL, 8, 2, 'EA', 0.89, NULL, 1.78, 0.2, 5, 'Hot Flavored Shrimp Chip')
-- ,...(rest of list)

  INSERT INTO PurchaseDB.dbo.Reward
  VALUES(2726)
  -- ,...(rest of list)

INSERT INTO PurchaseDB.dbo.Purchase(PurchasDate, PurchasTime, Cashier, RewardID, Purchase_Method, LocationID, Reference#,TC#)
VALUES
  ('11/27/19', '18:47:32', NULL, NULL, 3, 8, NULL, NULL), ('12/2/19', '18:33:00', 'CHEC 513', 3, 3, 7, '817604', '721AF959DD1E131E9'), ('12/2/19', '18:43:00', 'Server 5381', NULL, 3, 15, '160255152003', NULL)
  -- ,...(rest of list)
  -- Insert some of column first and rest of the column later, but they made new row instead of inserted in previous row. 

  TRUNCATE TABLE PurchaseDB.dbo.Purchase

  INSERT INTO PurchaseDB.dbo.Purchase
  VALUES 
  (65.04, NULL, 2, '11/27/19', '18:47:32', NULL, NULL, 3, 8, NULL, NULL), (73.3, NULL, 24, '12/2/19', '18:33:00', 'CHEC 513', 3, 3, 7, '817604', '721AF959DD1E131E9')
  -- ,...(rest of list)
  INSERT INTO PurchaseDB.dbo.Point_Transaction
  VALUES 
  (2, 7, 71, 71, '12/2/19 18:33:00', '18:33:00', '1/31/20', 7272),
    (4, 18, NULL, NULL, '12/13/19 17:41:00', '17:41:00', NULL, 2726), 
    (5, 7, 10, 39, '12/13/19 17:53:00', '17:53:00', '1/31/20', 7272), 
    (9, 7, 4, 129, '12/11/19 17:39:00', '17:39:00', '1/31/20', 7272), 
    (13, 20, NULL, NULL, '12/3/19 17:25:00', '17:25:00', NULL, 2726)
    -- ,...(rest of list)