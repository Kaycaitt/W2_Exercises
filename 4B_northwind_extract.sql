/*
1) Question: What is the name of the table that holds the items Northwind sells?
Answer: The Products table.

2) Question: What is the name of the table that holds the types (categories) of the items
Northwind sells?
Answer: The Categories table.

3) Question: What are the first and last names of all the Northwind employees?
Answer: 

Nancy Davolio
Andrew Fuller
Janet Leverling
Margaret Peacock
Steven Buchanan
Michael Suyama
Robert King
Laura Callahan
Anne Dodsworth
*/

SELECT * FROM products;
/*
Question: How many records does your query return? How can you change this
Answer: 77 records
*/

SELECT * FROM categories;
/*
Question: What is the category id of seafood?
Answer: 8
*/

SELECT OrderID, OrderDate, ShipName, ShipCountry FROM orders
LIMIT 50;
