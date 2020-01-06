1. Create Procedure to input value in Purchase Table 

- Purchase Table have 3 columns that saves foreign key from 3 other tables. So by using this procedure, we don't need to go each 3 table and find out which value have which primary key. 
- By using this Procedure, I don't need to add new value manually to 3 other tables. It will automatically add new value in specific table and get Primary key from that table. 

2. Need to Improve 
- Need to add default value of variable which doesn’t need to have value all the time. 
- Need to make error_handling tool to throw error message in case of spelling error. 
- Need to pass in too many parameter to perform procedure is there any better way?
