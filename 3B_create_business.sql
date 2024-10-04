CREATE DATABASE hello_business;
CREATE TABLE Person
(	PersonID INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR (30) NOT NULL,
    last_name VARCHAR (30) NOT NULL,
    email_address VARCHAR (40) NOT NULL,
    phone_number VARCHAR (10) NOT NULL,
	)

CREATE TABLE Customer
(	CustomerID INT PRIMARY KEY AUTO_INCREMENT,
	first_name 
    last_name
    email_address
    phone_number 
    physical_address VARCHAR(70) NULL,
    orders 
    comments VARCHAR (500) NULL,
    CONSTRAINT fk1 FOREIGN KEY (PersonID) REFERENCES Person (PersonID) ON DELETE RESTRICT ON UPDATE CASCADE
    );
    
CREATE TABLE Employee_Information
(	EmployeeID INT PRIMARY KEY,
	first_name
    last_name
    email_address
    phone_number
    work_email VARCHAR (40) NOT NULL,
    work_phone VARCHAR (10) NULL,
    hire_date DATE NOT NULL,
    username VARCHAR (31) NOT NULL,
    job_title VARCHAR (55) NOT NULL,
    department VARCHAR (20) NOT NULL,
    )
    
CREATE TABLE Financial_Data
(	DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
	vendor VARCHAR (25) NOT NULL,
    customer VARCHAR (60) NOT NULL,
    expenses DECIMAL (8,2) NOT NULL,
    revenue DECIMAL (9,2) NOT NULL,
    balance DECIMAL (8,2) NOT NULL,
    )

CREATE TABLE Customer_Transactions
(	OrderID INT PRIMARY KEY AUTO_INCREMENT,
	name
    order_date TIMESTAMP NOT NULL,
    item
    quantity INT UNSIGNED NOT NULL,
    purchase_amount DECIMAL (5,2) NOT NULL,
    payment_method VARCHAR (40) NOT NULL,
    )
    
CREATE TABLE Products
(	ProductID INT PRIMARY KEY AUTO_INCREMENT,
	food VARCHAR (20) NOT NULL,
	drinks VARCHAR (15) NOT NULL,
    apparel VARCHAR (10) NULL
    gift_cards DECIMAL (3,0) NULL,
    )
    

