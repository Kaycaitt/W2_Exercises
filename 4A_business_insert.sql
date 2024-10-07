#Updating data type for name on customer transaction table#

ALTER TABLE customer_transactions MODIFY name VARCHAR(60);

# -- Table Rows (Person) --
INSERT INTO person (first_name,last_name,email_address,phone_number)
VALUES ('Elena', 'Gilbert', 'egilbert@gmail.com', '4986914450');
INSERT INTO person (first_name,last_name,email_address,phone_number)
VALUES ('Hayley', 'Marshall', 'hmarshall@gmail.com', '4428933207');
INSERT INTO person (first_name,last_name,email_address,phone_number)
VALUES ('Bonnie', 'Bennett', 'bbennett@gmail.com', '3515938469');
INSERT INTO person (first_name,last_name,email_address,phone_number)
VALUES ('Hope', 'Mikaelson', 'hmikaelson@gmail.com', '7984790197');
INSERT INTO person (first_name,last_name,email_address,phone_number)
VALUES ('Rebekah', 'Mikaelson', 'rmikaelson@gmail.com', '2493574167');
/*Complete for the most part (unsure)*/
/*Possibly need to tie person to customer id*/

#Testing output/removing duplicate records#
# SELECT * FROM hello_business.person;
# DELETE FROM person
# WHERE PersonID = 3;
# SELECT * FROM hello_business.person;

-- Table Rows (Customer) --

#Dropping Comments and Orders columns from Customer table#
# ALTER TABLE customer
# DROP COLUMN orders,
# DROP COLUMN comments;

INSERT INTO customer (first_name,last_name,email_address,phone_number,physical_address,personid)
VALUES ('Elena', 'Gilbert', 'egilbert@gmail.com', '4986914450', '2104 Maple Street Mystic Falls VA', '1');
INSERT INTO customer (first_name,last_name,email_address,phone_number,physical_address,personid)
VALUES ('Hayley', 'Marshall', 'hmarshall@gmail.com', '4428933207', '2129 East Street SE Covington Georgia', '2');
INSERT INTO customer (first_name,last_name,email_address,phone_number,physical_address,personid)
VALUES ('Bonnie', 'Bennett', 'bbennett@gmail.com', '3515938469', '2136 Conyers Street SE Covington Georgia','4');
INSERT INTO customer (first_name,last_name,email_address,phone_number,physical_address,personid)
VALUES ('Hope', 'Mikaelson', 'hmikaelson@gmail.com', '7984790197', '684 Abernathy Rd NE Sandy Springs Georgia','4');
INSERT INTO customer (first_name,last_name,email_address,phone_number,physical_address,personid)
VALUES ('Rebekah', 'Mikaelson', 'rmikaelson@gmail.com', '2493574167', '903 Commercial Street Conyers Georgia', '5');

#Testing output/removing duplicate records#
# SELECT * FROM customer;

-- Table Rows (Customer Transactions) -- #NO LONGER A TABLE#
# INSERT INTO customer_transactions (customerid,order_date,item,quantity,purchase_amount,payment_method,ProductID,customer_comments)
# VALUE ('1', '10/04/2024', 'Pepperoni Pizza', '2', '10.00', 'Debit', 'customer', 'Food was great! Will be coming back again soon!');

/*Dropping customer transactions as I no longer have a products table*/
# DROP TABLE customer_transactions;

# ALTER TABLE customer_transactions
# ADD customer_comments VARCHAR (500);
# ALTER TABLE customer_transactions
# DROP name;
# ALTER TABLE customer_transactions
# MODIFY CustomerID int AFTER order_date;
# ALTER TABLE customer_transactions
# MODIFY order_date DATE AFTER customerid;

#deleting product table to make database easy to create/comprehend#
# ALTER TABLE customer_transactions DROP FOREIGN KEY fk4;
# DROP TABLE products; 


-- Table Rows (Employee Information) for time, adding like 3 records, one including single customer--
INSERT INTO employee_information (first_name,last_name,email_address,phone_number,work_email,work_phone,hire_date,username,job_title,department,personID)
VALUES ('Hope', 'Mikaelson', 'hmikaelson@gmail.com', '7984790197', 'hmikaelson@work.com', '5142563564', '2019/10/20', 'hmikaelson', 'Sales Associate', 'Sales', '5');
INSERT INTO employee_information (first_name,last_name,email_address,phone_number,work_email,work_phone,hire_date,username,job_title,department,personID)
VALUES ('Mary', 'Jameson', 'maryjameson@yahoo.com', '3124798647', 'mjameson@work.com', '5142704594', '2012-06/7', 'mjameson', 'Secretary', 'Administration', '7');
INSERT INTO employee_information (first_name,last_name,email_address,phone_number,work_email,work_phone,hire_date,username,job_title,department,personID)
VALUES ('Malachai', 'Parker', 'mparker@gmail.com', '5965282495', 'mparker@work.com', '5142704594', '2015-11-9', 'mparker', 'Software Engineer', 'IT', '8');
INSERT INTO employee_information (first_name,last_name,email_address,phone_number,work_email,work_phone,hire_date,username,job_title,department,personID)
VALUES ('Matthew', 'Donovan', 'mdonovan@yahoo.com', '6308796428', 'mdonovan@work.com', '5142568253', '2018-02-28', 'mdonovan', 'HR Analyst', 'Human Resources', '9');
INSERT INTO employee_information (first_name,last_name,email_address,phone_number,work_email,work_phone,hire_date,username,job_title,department,personID)
VALUES ('Davina', 'Claire', 'dclaire@gmail.com', '9653467219', 'dclaire@work.com', '5142709647', '2017-12-01', 'dclaire', 'SOC Analyst', 'IT', '10');

#Testing output/removing duplicate records#
# SELECT * FROM employee_information;

# /*Updating EmployeeID to auto increment*/ 
# ALTER TABLE employee_information MODIFY EmployeeID INT AUTO_INCREMENT; 

#adding users manually to person table to apply proper personids#
# INSERT INTO person (first_name,last_name,email_address,phone_number)
# VALUES ('Mary', 'Jameson', 'maryjameson@yahoo.com', '3124798649');
# INSERT INTO person (first_name,last_name,email_address,phone_number)
# VALUES ('Malachai', 'Parker', 'mparker@gmail.com', '5965282495');
# INSERT INTO person (first_name,last_name,email_address,phone_number)
# VALUES ('Matthew', 'Donovan', 'mdonovan@yahoo.com', '6308796428');
# INSERT INTO person (first_name,last_name,email_address,phone_number)
# VALUES ('Davina', 'Claire', 'dclaire@gmail.com', '9653467219');

/*Dropping Financial table to make things easier to create/manipulate*/
# DROP TABLE financial_data;