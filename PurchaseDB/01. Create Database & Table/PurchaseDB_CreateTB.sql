CREATE DATABASE PurchaseDB

CREATE TABLE PurchaseDB.dbo.Purchase (

PurchasdID INT Primary Key IDENTITY,
Total_Price MONEY ,
Total_Saving MONEY,
Total_item# SMALLINT,
PurchasDate DateTime,
PurchasTime Time,
Cashier NVARCHAR(20),
RewardID INT ,
Purchase_Method INT,
LocationID INT,
Reference# NVARCHAR(30),
TC# NVARCHAR(30),
)

CREATE TABLE PurchaseDB.dbo.Product (

    ProductID INT Primary Key IDENTITY(1,1),
    ItemName NVARCHAR(30),
    Item_Feature NVARCHAR(30),
    PurchaseID INT,
    Quantity DECIMAL(10,3),
    Unit NVARCHAR(10),
    Price_per_Unit MONEY,
    Tip MONEY,
    Product_Total MONEY,
    Savings MONEY,
    CategoryID INT,
    ItemDescription NVARCHAR(40)
)

CREATE TABLE PurchaseDB.dbo.Point_Transaction (

    TransactionID INT Primary Key IDENTITY(1,1),
    PurchaseID INT,
    LocationID INT,
    Point_Earned INT,
    Total_Point INT,
    Point_Earned_Date DateTime,
    Point_Earned_Time Time,
    Point_Expired_Date DateTime,
    RewardID INT

)

CREATE TABLE PurchaseDB.dbo.Location (

    LocationID INT Primary Key IDENTITY(1,1),
    Branch# NVARCHAR(20),
    Website NVARCHAR(30),
    Phone# NVARCHAR(20),
    Location_Address NVARCHAR(MAX)

)
CREATE TABLE PurchaseDB.dbo.Reward (

    RewardID INT Primary Key IDENTITY(1,1),
    Reward# INT

)

CREATE TABLE PurchaseDB.dbo.Product_Category (

    CategoryID INT Primary Key IDENTITY(1,1),
    CategoryName  NVARCHAR(20)

)

CREATE TABLE PurchaseDB.dbo.Purchase_Method (

    MethodID INT Primary Key IDENTITY(1,1),
    MethodType NVARCHAR(10),
    MethodCard INT 

)

CREATE TABLE PurchaseDB.dbo.CardInfo(

    CardID INT Primary Key IDENTITY(1,1),
    CardBrand NVARCHAR(4),
    CardDigit NVARCHAR (4),
    AID NVARCHAR(30)


)

ALTER TABLE PurchaseDB.dbo.LOCATION
ADD 
LocationName NVARCHAR(20);

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
)
