/*Creation of Example Database with Simple Tables*/
CREATE DATABASE hello_business; -- database created --

#Primary table creation that shows possible relationship between Employee and Customer Table#

CREATE TABLE Person
(	PersonID INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR (30) NOT NULL,
    last_name VARCHAR (30) NOT NULL,
    email_address VARCHAR (40) NOT NULL,
    phone_number VARCHAR (10) NOT NULL
	); /* This table is created*/

#Table referencing customer data#

CREATE TABLE Customer
(	CustomerID INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR (30) NOT NULL,
    last_name VARCHAR (30) NOT NULL,
    email_address VARCHAR (40) NOT NULL,
    phone_number VARCHAR (10) NOT NULL,
    physical_address VARCHAR(70) NULL,
    orders INT UNSIGNED,
    comments VARCHAR (500) NULL,
    PersonID INT,
    CONSTRAINT fk1 FOREIGN KEY (PersonID) REFERENCES Person (PersonID) ON DELETE RESTRICT ON UPDATE CASCADE
    ); /*Table is created*/
    
#Table referencing employee information#

CREATE TABLE Employee_Information
(	EmployeeID INT PRIMARY KEY,
	first_name VARCHAR (30) NOT NULL,
    last_name VARCHAR (30) NOT NULL,
    email_address VARCHAR (40) NOT NULL,
    phone_number VARCHAR (10) NOT NULL,
    work_email VARCHAR (40) NOT NULL,
    work_phone VARCHAR (10) NULL,
    hire_date DATE NOT NULL,
    username VARCHAR (31) NOT NULL,
    job_title VARCHAR (55) NOT NULL,
    department VARCHAR (20) NOT NULL,
    PersonID INT,
    CONSTRAINT fk2 FOREIGN KEY (PersonID) REFERENCES Person (PersonID) ON DELETE RESTRICT ON UPDATE CASCADE
    ); /*Table is created*/

#Table containing company related financial data#
    
CREATE TABLE Financial_Data
(	DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
	vendor VARCHAR (25) NOT NULL,
    customer VARCHAR (60) NOT NULL,
    expenses DECIMAL (8,2) NOT NULL,
    revenue DECIMAL (9,2) NOT NULL,
    balance DECIMAL (8,2) NOT NULL 
    ); /*Table is created*/

#Table for customer transactions#

CREATE TABLE Customer_Transactions
(	OrderID INT PRIMARY KEY AUTO_INCREMENT,
	name INT,
    order_date DATE NOT NULL,
    item INT,
    quantity INT UNSIGNED NOT NULL,
    purchase_amount DECIMAL (5,2) NOT NULL,
    payment_method VARCHAR (40) NOT NULL,
    CustomerID INT,
    ProductID INT,
    CONSTRAINT fk3 FOREIGN KEY (CustomerID) REFERENCES Customer (CustomerID) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk4 FOREIGN KEY (ProductID) REFERENCES Products (ProductID) ON DELETE RESTRICT ON UPDATE CASCADE
    ); /*Table has been REMOVED*/ 
    
#Table for company products provided#
    
CREATE TABLE Products
(	ProductID INT PRIMARY KEY AUTO_INCREMENT,
	food VARCHAR (20) NOT NULL,
    drinks VARCHAR (15) NOT NULL,
    apparel VARCHAR (10) NULL,
    gift_cards DECIMAL (3,0) NULL
    ); /*Table has been REMOVED*/ 

