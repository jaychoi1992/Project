1. Create Table to save insert & delete log of Purchase Table 
- Using 'CREATE TABLE' to create table named PurchaseLog
2. Creating Trigger to records insert and delete log
- Using 'CREATE TRIGGER' to make trigger whenever activated on insertion or deletion of Purchase Table 
- I set 'SET NOCOUNT ON' to suppress the number of affected low message printing
- ADD data which is added or deleted to Purchase Table as well as when this event occurred and what kind of event it is in the PurchaseLog Table. 