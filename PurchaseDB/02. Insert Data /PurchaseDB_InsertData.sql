INSERT INTO PurchaseDB.dbo.[Location]
VALUES
(NULL, NULL, 734-975-4500, 'Ann Arbor', 'WholeFood'), ('11332', NULL, 708-457-0606, '4101 N Harlem Ave. Norridge, IL 60706', 'WALGREEN'), ('07515', NULL, 773-631-3927, '7155 W Foster Ave. CHICAGO, IL 60656', 'WALGREEN'), ('GLENVIEW', NULL, NULL, NULL, 'TOUS LES JOURS'), ('22861', NULL, 708-402-0974, '4747 N.Harlem Ave. Harwood Heights, IL' , 'STARBUCKs'), (NULL, NULL, 224-347-2094, '737 E Dundee Rd, Arlingtoon IL 60004, United States', 'SALON AVEO'), (NULL, NULL, 708-867-8543, '7401 W. Lawrence Ave. Harwood Heights IL 60706', 'MARIANOS'), (NULL, NULL, 708-867-4230, '4725 N Harlem Ave. Harwood Heights, IL 60656', 'Marshalls'), (NULL, NULL, 847-967-0004, '801 Civic Center Dr. Niles, IL. 60714', 'Manna Snack'), ('#689', NULL, 734-971-7148, 'Ypsilanti MI 48197', 'Kroger Fuel'), (NULL, NULL, 734-971-7148, '3200 Carpenter Rd. Ypsilanti, MI 48197', 'Kroger'), (NULL, NULL, 847-768-5884, '9078 W Golf Rd Niles IL 60714', 'Jang Choong Ddong'), (NULL, 'http://www.hmart.com', 847-581-1212, '801 Civic Center Dr. Niles, IL. 60714', 'HMART'), ('351142', NULL, 708-531-1694, 'Chicago Union Station', 'Dunkin Donuts'), (NULL, NULL, 708-867-4900, NULL, 'Domino''s Pizza'), (NULL, NULL, 773-283-2355, '3615 N Central Ave, CHICAGO, IL', 'CVS Pharmacy'), ('9170838', NULL, NULL, '3611 N Harlem Ave CHICAGO IL 60634', 'BP AMOCO'), ('9173139', NULL, NULL, '4401 N Harlem, Norridge, IL 60706', 'BP'), (NULL, NULL, 800-325-7894, '4709 N. Harlem Av. Hharwood Heights, IL', 'ALDI'), ('5817275', NULL, NULL, NULL, 'BP')

-- enlarge data size of Column MethodType
ALTER TABLE PurchaseDB.dbo.Purchase_Method
ALTER COLUMN MethodType NVARCHAR (20)


INSERT INTO PurchaseDB.dbo.Purchase_Method
VALUES
('Mobile Pay', 3), ('Card Insert', 3), ('Card Insert', 2), ('Card Insert', 1), ('Card Swipe', 3), ('Card Swipe', 1), ('Card Swipe', 2)

INSERT INTO Purchase_Method
VALUES 
('Mobile Pay', 3), 
('Card Insert', 3), 
('Card Insert', 2), 
('Card Insert', 1), 
('Card Swipe', 3), 
('Card Swipe', 1), 
('Card Swipe', 2)

INSERT INTO Product_Category
VALUES ('VEGETABLE'), ('TOFU'), ('TAKEOUT'), ('STATIONERY'), ('SNACK'), ('SERVICE'), ('MEDICINE'), ('MEAT'), ('GRAIN'), ('FUEL'), ('FRUIT'), ('FROZEN FOOOD'), ('FISH'), ('FERMENTED VEGETABLE'), ('ELECTRONIC'), ('DRINK'), ('DESSERT'), ('DAIRY'), ('COOKING UTENSIL'), ('COOKING SUPPLY'), ('COOKING SUPPLY'), ('CLEANING TOOL'), ('ACCESSORY'), ('CANDY')

INSERT INTO PurchaseDB.dbo.Purchase(Total_Price, Total_Saving, Total_item#)
VALUES
(23.27, NULL, 1),
(25.77, 10.35, 8),
(45, NULL, 1),
(22.29, NULL, 10),
(37.97, NULL, 2),
(4.55, NULL, 1),
(85.3, NULL, 1),
(55.19, 7.67, 16),
(80.98, 16.8, 11),
(3.25, NULL, 1),
(27.67, NULL, 2),
(32.93, NULL, 1),
(11.03, NULL, 2),
(5.83, NULL, 1),
(22.6, NULL, 1),
(12.23, NULL, 1),
(27.33, NULL, 6),
(24.92, NULL, 11),
(3.67, NULL, 1),
(3.22, NULL, 1),
(22.3, NULL, 1),
(38.91, NULL, 6),
(19.07, NULL, 5),
(26.88, NULL, 1),
(19.28, NULL, 1),
(73.3, NULL, 24),
(65.04, NULL, 2)

INSERT INTO PurchaseDB.dbo.Product
VALUES 
 
('Bagel w/ Spread', 'DD Plain, DD CrmChz Veggie, Toasted', 0, 1, 'EA', 2.89, NULL, 2.89, NULL, 9, 'Bread'), 
('NSHK RICE', NULL, 9, 1, 'EA', 3.67, NULL, 3.67, NULL, 9, 'Rice'), 
('Chinese Chives', NULL, 8, 1.78, 'lb', 2.79, NULL, 4.9662, NULL, 1, 'Chives'), 
('Kooksoondang', NULL, 8, 2, 'EA', 4.04, NULL, 8.08, NULL, 25, 'Makgeolli '), 
('LT Peperp W/Choco', NULL, 8, 2, 'EA', 0.5, NULL, 1, 2.98, 5, 'Pepero Chocolate Covered Stick'), 
('Ns shrimp hot snck', NULL, 8, 2, 'EA', 0.89, NULL, 1.78, 0.2, 5, 'Hot Flavored Shrimp Chip'), 
('NS Postick Snack', NULL, 8, 1, 'EA', 1.49, NULL, 1.49, NULL, 5, 'Postic Potato Stick'), 
('LT Papico Pouch', NULL, 8, 1, 'EA', 6.49, NULL, 6.49, NULL, 17, 'Ice-Cream'), 
('Mocha Bread', NULL, 7, 1, 'EA', 4.75, NULL, 4.75, NULL, 9, 'Bread'), 
('Frank Pastry', NULL, 7, 1, 'EA', 2.75, NULL, 2.75, NULL, 9, 'Bread'), 
('Sausage Onion Pastry', NULL, 7, 1, 'EA', 2.95, NULL, 2.95, NULL, 9, 'Bread'), 
('Kimchi Croquette', NULL, 7, 1, 'EA', 2.45, NULL, 2.45, NULL, 9, 'Bread'), 
('Premium Castella', NULL, 7, 1, 'EA', 6.5, NULL, 6.5, NULL, 9, 'Bread'), 
('Mocha Pastry Pan Bread', NULL, 7, 1, 'EA', 5.5, NULL, 5.5, NULL, 9, 'Bread'), 
('KimDDuckSoon', NULL, 6, 1, 'EA', 12.23, NULL, 12.23, NULL, 3, 'Korean Street Food'), 
('UNLD Gasoline', NULL, 5, 7.879, 'Gallon', 2.869, NULL, 22.604851, 0.23637, 10, 'Gasoline'), 
('XM LNDT WINTER AST 5.1Z', NULL, 4, 1, 'EA', 5.29, NULL, 5.29, NULL, 24, 'Chocolate'), 
('MARS MILKWAY FUN SIZE 10.65OZ', NULL, 3, 1, 'EA', 4.99, NULL, 4.99, 4.99, 24, 'Chocolate'), 
('MARS SNICKERS FUN SIZE 10.59 OZ', NULL, 3, 1, 'EA', 4.99, NULL, 4.99, 4.99, 24, 'Chocolate'), 
('Cloud Cake #1', NULL, 2, 1, 'EA', 30, NULL, 30, NULL, 9, 'Cake'), 
('FSA RX 2770356', NULL, 1, 1, 'EA', 0, NULL, 0, NULL, 7, 'Flu Shot'), 
('FSA RX 2770357', NULL, 1, 1, 'EA', 27.67, NULL, 27.67, NULL, 7, 'Flu Shot'), 
('Gr Americano', 'Decaf', 0, 1, 'EA', 2.95, NULL, 2.95, NULL, 16, 'Coffee'), 
('Pulmuone Spicy Ric', NULL, 9, 1, 'EA', 3.99, NULL, 3.99, 2, 9, 'Rice Cake'), 
('PMO Vietnanese PHO', NULL, 9, 1, 'EA', 4.99, NULL, 4.99, 2, 9, 'Noodle'), 
('Junlado Whole Cabb', NULL, 9, 1, 'EA', 17.99, NULL, 17.99, NULL, 14, 'Kimchi'), 
('House Tofu Firm', NULL, 9, 1, 'EA', 1.49, NULL, 1.49, NULL, 2, 'Tofu'), 
('S/S Steamer M', NULL, 9, 1, 'EA', 5.99, NULL, 5.99, NULL, 19, 'Steamer'), 
('Produce', NULL, 9, 1, 'EA', 4.99, NULL, 4.99, NULL, NULL, NULL),
 ('Pork Single Belly', NULL, 9, 1, 'EA', 15.12, NULL, 15.12, 6.06, 8, 'Pork'), 
 ('Pork Single Belly', NULL, 9, 1, 'EA', 14.77, NULL, 14.77, 5.92, 8, 'Pork'), 
 ('CJ Pancake Mix', NULL, 9, 1, 'EA', 1.67, NULL, 1.67, 0.82, 9, 'Pancake Mix'), 
 ('Chinese Chives', NULL, 9, 1.52, 'lb', 2.79, NULL, 4.2408, NULL, 1, 'Chives'), 
 ('JFC Bread Crumbs', NULL, 9, 1, 'EA', 3.49, NULL, 3.49, NULL, 9, 'Bread Crumbs'), 
 ('KRO FLOUR', NULL, 8, 1, 'EA', 1.29, NULL, 1.29, 0.3, 9, 'Flour'), 
 ('BRYV Blueberries', NULL, 8, 1, 'EA', 1.99, NULL, 1.99, 2, 11, 'BlueBerry'), 
 ('KRO AAA BATT', NULL, 8, 1, 'EA', 3.99, NULL, 3.99, NULL, 15, 'Battery'), 
 ('MINUTEMAID Punch', NULL, 8, 1, 'EA', 1.99, NULL, 1.99, NULL, 16, 'Juice'), 
 ('Roundy''s Milk', NULL, 8, 1, 'EA', 1.69, NULL, 1.69, NULL, 18, 'Milk'), 
 ('Lettuce Head', NULL, 8, 2, 'EA', 1.69, NULL, 3.38, NULL, 1, 'Letttuce'), 
 ('CHOBANI Yogurt', NULL, 8, 1, 'EA', 3.99, NULL, 3.99, NULL, 18, 'Yogurt'), 
 ('GRDTO RF ORIG', NULL, 8, 1, 'EA', 1, NULL, 1, NULL, 5, 'Gardetto''s Original'), 
 ('GRDTO MIX', NULL, 8, 2, 'EA', 1, NULL, 2, 3.18, 5, 'Gardetto''s Snack Mix '),
('Miller CHK', NULL, 8, 1, 'EA', 15.31, NULL, 15.31, 2.19, 25, 'Beer'), 
('Ground SRLN ', NULL, 8, 1, 'lb', 6.31, NULL, 6.31, NULL, NULL, NULL), 
('MRE CLDRS FZ MEAL', NULL, 8, 1, 'EA', 2.79, NULL, 2.79, NULL, 12, 'Frozen pie with chicken'), 
('Roundy''s Eggs', NULL, 8, 1, 'EA', 1.79, NULL, 1.79, NULL, 18, 'Egg'), 
('STO Baby Spring Mix', NULL, 8, 1, 'EA', 5.99, NULL, 5.99, NULL, 1, 'Greens'), 
('Meat unlimited buffet', NULL, 7, 1, 'Service', 72.29, 13.01, 85.3, NULL, 1, 'Korean Bbq Grill '), 
('Advil Tablets', NULL, 6, 1, 'EA', 4.29, NULL, 4.29, NULL, 7, 'Advil Tablet'), 
('Por Belly ', 'NGMO', 5, 1.06, 'lb', 5.99, NULL, 6.3494, NULL, 8, 'Pork'), 
('Beef Skirt Steak', 'S4', 5, 2.26, 'lb', 13.99, NULL, 31.6174, NULL, 8, 'Beef'),
('Mandarins', NULL, 4, 2, 'EA', 2.49, NULL, 4.98, NULL, 11, 'Mandarins'), 
('BlueBerries', NULL, 4, 1, 'EA', 2.29, NULL, 2.29, NULL, 11, 'BlueBerry'), 
('Asparagus', NULL, 4, 1, 'EA', 2.89, NULL, 2.89, NULL, 1, 'Asparagus'), 
('Mushroom', NULL, 4, 2, 'EA', 1.89, NULL, 3.78, NULL, 1, 'Mushroom'), 
('Broccoli Crowns', NULL, 4, 1.32, 'lb', 1.69, NULL, 2.2308, NULL, 1, 'Broccoli'), 
('Canola Oil', NULL, 4, 1, 'EA', 1.85, NULL, 1.85, NULL, 21, 'Cooking Oil'), 
('Baby Bella', NULL, 4, 2, 'EA', 1.89, NULL, 3.78, NULL, 1, 'Mushroom'), 
('Men''s Haircut', NULL, 3, 1, 'Service', 35, 10, 45, NULL, 6, 'Haircut'), 
('Kemps Milk', 'SKIM Milk', 2, 1, 'EA', 1.79, NULL, 1.79, NULL, 18, 'Milk'), 
('Roma Tomato', NULL, 2, 2.55, 'lb', 1.49, NULL, 3.8, NULL, 1, 'Tomato'), 
('Green Grape', 'SDLS ORGanic', 2, 2.5, 'lb', 2.49, NULL, 6.23, 1.25, 11, 'Grape'), 
('Banana', 'Organic', 2, 2.37, 'lb', 0.59, NULL, 1.4, NULL, 11, 'Banana'), 
('Avocados', NULL, 2, 1, 'EA', 1.99, NULL, 1.99, 4.12, 11, 'Avocado'), 
('Gasoline', NULL, 1, 8.435, 'Gallon', 2.759, NULL, 23.27, NULL, 10, 'Gasoline'), 
('Raspberries', NULL, 2, 2, 'EA', 4.99, NULL, 5, 4.98, 11, 'Raspberry')

  INSERT INTO PurchaseDB.dbo.Reward
  VALUES(2726),(9494),(7272),(5945)

INSERT INTO PurchaseDB.dbo.Purchase(PurchasDate, PurchasTime, Cashier, RewardID, Purchase_Method, LocationID, Reference#,TC#)
VALUES
  ('11/27/19', '18:47:32', NULL, NULL, 3, 8, NULL, NULL), ('12/2/19', '18:33:00', 'CHEC 513', 3, 3, 7, '817604', '721AF959DD1E131E9'), ('12/2/19', '18:43:00', 'Server 5381', NULL, 3, 15, '160255152003', NULL), ('12/13/19', '17:41:00', 'Pump 8', NULL, 4, 18, NULL, NULL), ('12/13/19', '17:53:00', 'CHEC 513', 3, 4, 7, '800693', '6CF64179D722DF1B'), ('11/27/19', '19:29:00', 'Glenview', NULL, 3, 4, '204626', NULL), ('6/2/19', '10:17:00', 'Pump 8', NULL, 4, 10, '545551', NULL), ('11/28/19', '6:39:00', 'Victoria', NULL, 3, 14, NULL, NULL), ('12/11/19', '17:39:00', 'CHEC 503', 3, 4, 7, '808478', 'E498E1F0955AAF3B7'), ('11/8/19', '18:30:00', 'Ame Ena', NULL, 3, 13, NULL, NULL), ('11/23/19', '14:49:00', 'Glenview', NULL, 3, 4, '203517', NULL), ('11/8/19', '17:33:02', 'Manager', NULL, 3, 9, '0549', NULL), ('12/3/19', '17:25:00', '#005', 1, 6, 20, NULL, NULL), ('12/4/19', '17:29:00', 'SERGIO', NULL, 4, 16, '36641', '44A69A4A658ADD92E'), ('12/4/19', '17:45:00', NULL, 4, 4, 2, NULL, NULL), ('12/5/19', '18:05:00', 'Glenview', NULL, 4, 4, '206493', NULL), ('12/8/19', '15:16:00', NULL, 4, 3, 3, NULL, NULL), ('12/9/19', '19:15:00', NULL, NULL, 2, 5, '00000102', NULL), ('12/8/19', '16:32:00', 'Leticia Herrera', NULL, 3, 13, NULL, '7FE1019B940BDCB3'), ('12/8/19', '17:27:00', 'CHEC 515', 3, 3, 7, '830321', '5C26A908868F571F'), ('11/22/19', '19:43:35', NULL, NULL, 4, 12, NULL, NULL), ('9/12/19', '16:38:00', 'CHEC 503', 2, 4, 11, NULL, 'F6298966B562FFC4'), ('8/31/19', '10:52:38', NULL, NULL, 3, 1, NULL, '275EECB7FC2F247F'), ('11/23/19', '15:39:00', 'Maria', NULL, 3, 19, '653474', NULL), ('11/23/19', '14:17:00', NULL, NULL, 4, 6, NULL, '72D26BC0AF3296CE'), ('11/23/19', '16:03:00', 'CHEC 505', 2, 3, 7, '862086', '1FB36D2E764EFAE'), ('11/21/19', '17:32:18', NULL, 1, 6, 17, NULL, NULL), ('11/23/19', '16:03:00', 'CHEC 505', 2, 3, 7, '862086', '1FB36D2E764EFAE')

  -- Insert some of column first and rest of the column later, but they made new row instead of inserted in previous row. 

  TRUNCATE TABLE PurchaseDB.dbo.Purchase

  INSERT INTO PurchaseDB.dbo.Purchase
  VALUES 
  (65.04, NULL, 2, '11/27/19', '18:47:32', NULL, NULL, 3, 8, NULL, NULL), (73.3, NULL, 24, '12/2/19', '18:33:00', 'CHEC 513', 3, 3, 7, '817604', '721AF959DD1E131E9'), (19.28, NULL, 1, '12/2/19', '18:43:00', 'Server 5381', NULL, 3, 15, '160255152003', NULL), (26.88, NULL, 1, '12/13/19', '17:41:00', 'Pump 8', NULL, 4, 18, NULL, NULL), (19.07, NULL, 5, '12/13/19', '17:53:00', 'CHEC 513', 3, 4, 7, '800693', '6CF64179D722DF1B'), (38.91, NULL, 6, '11/27/19', '19:29:00', 'Glenview', NULL, 3, 4, '204626', NULL), (22.3, NULL, 1, '6/2/19', '10:17:00', 'Pump 8', NULL, 4, 10, '545551', NULL), (3.22, NULL, 1, '11/28/19', '6:39:00', 'Victoria', NULL, 3, 14, NULL, NULL), (3.67, NULL, 1, '12/11/19', '17:39:00', 'CHEC 503', 3, 4, 7, '808478', 'E498E1F0955AAF3B7'), (24.92, NULL, 11, '11/8/19', '18:30:00', 'Ame Ena', NULL, 3, 13, NULL, NULL), (27.33, NULL, 6, '11/23/19', '14:49:00', 'Glenview', NULL, 3, 4, '203517', NULL), (12.23, NULL, 1, '11/8/19', '17:33:02', 'Manager', NULL, 3, 9, '0549', NULL), (22.6, NULL, 1, '12/3/19', '17:25:00', '#005', 1, 6, 20, NULL, NULL), (5.83, NULL, 1, '12/4/19', '17:29:00', 'SERGIO', NULL, 4, 16, '36641', '44A69A4A658ADD92E'), (11.03, NULL, 2, '12/4/19', '17:45:00', NULL, 4, 4, 2, NULL, NULL), (32.93, NULL, 1, '12/5/19', '18:05:00', 'Glenview', NULL, 4, 4, '206493', NULL), (27.67, NULL, 2, '12/8/19', '15:16:00', NULL, 4, 3, 3, NULL, NULL), (3.25, NULL, 1, '12/9/19', '19:15:00', NULL, NULL, 2, 5, '00000102', NULL), (80.98, 16.8, 11, '12/8/19', '16:32:00', 'Leticia Herrera', NULL, 3, 13, NULL, '7FE1019B940BDCB3'), (55.19, 7.67, 16, '12/8/19', '17:27:00', 'CHEC 515', 3, 3, 7, '830321', '5C26A908868F571F'), (85.3, NULL, 1, '11/22/19', '19:43:35', NULL, NULL, 4, 12, NULL, NULL), (4.55, NULL, 1, '9/12/19', '16:38:00', 'CHEC 503', 2, 4, 11, NULL, 'F6298966B562FFC4'), (37.97, NULL, 2, '8/31/19', '10:52:38', NULL, NULL, 3, 1, NULL, '275EECB7FC2F247F'), (22.29, NULL, 10, '11/23/19', '15:39:00', 'Maria', NULL, 3, 19, '653474', NULL), (45, NULL, 1, '11/23/19', '14:17:00', NULL, NULL, 4, 6, NULL, '72D26BC0AF3296CE'), (25.77, 10.35, 8, '11/23/19', '16:03:00', 'CHEC 505', 2, 3, 7, '862086', '1FB36D2E764EFAE'), (23.27, NULL, 1, '11/21/19', '17:32:18', NULL, 1, 6, 17, NULL, NULL)

  INSERT INTO PurchaseDB.dbo.Point_Transaction
  VALUES 
  (2, 7, 71, 71, '12/2/19 18:33:00', '18:33:00', '1/31/20', 7272),
    (4, 18, NULL, NULL, '12/13/19 17:41:00', '17:41:00', NULL, 2726), 
    (5, 7, 10, 39, '12/13/19 17:53:00', '17:53:00', '1/31/20', 7272), 
    (9, 7, 4, 129, '12/11/19 17:39:00', '17:39:00', '1/31/20', 7272), 
    (13, 20, NULL, NULL, '12/3/19 17:25:00', '17:25:00', NULL, 2726), 
    (15, 2, 90, 1400, '12/4/19 17:45:00', '17:45:00', NULL, 5945), 
    (17, 3, 200, 1600, '12/8/19 15:16:00', '15:16:00', NULL, 5945), 
    (20, 7, 54, 125, '12/8/19 17:27:00', '17:27:00', '1/31/20', 7272), 
    (22, 11, 4, 79, '9/12/19 16:38:00', '16:38:00', '10/13/19', 9494), 
    (27, 17, NULL, NULL, '11/21/19 17:32:18', '17:32:18', NULL, 2726), 
    (26, 7, 25, 208, '11/23/19 16:03:00', '16:03:00', '12/31/19', 9494)