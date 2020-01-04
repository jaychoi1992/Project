1. Inputting data to DataBase
- Using 'INSERT INTO ~ VALUES' to put data in to each tables 
- Original data was saved as .CSV file. So I use Concatenate function in Excel spreadsheet to make multiple data in format of ( - , -, -). 
- Every column which is set as NVARCHAR only accept data in format of 'example'. So I need to add single quotation mark in front and in the back of each data. I use ' = "'" & A1 & "'" to make this possible. 
- Sometimes, data has more number of character in it than column allowed, so I need to fix  it using 'Alter Table' command. 
- Putting data using TSQL command takes a lot of effort and time to do it. So I am planning to update using Python.  