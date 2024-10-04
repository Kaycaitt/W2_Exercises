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

#Testing output/removing duplicate records#
# SELECT * FROM hello_business.person;
# DELETE FROM person
# WHERE PersonID = 3;
# SELECT * FROM hello_business.person;

-- Table Rows (Customer) --
INSERT INTO person (first_name,last_name,email_address,phone_number,physical_address,orders,comments)
VALUES ('Elena', 'Gilbert', 'egilbert@gmail.com', '4986914450', '2104 Maple Street Mystic Falls VA', );
INSERT INTO person (first_name,last_name,email_address,phone_number,physical_address,orders,comments)
VALUES ('Hayley', 'Marshall', 'hmarshall@gmail.com', '4428933207', );
INSERT INTO person (first_name,last_name,email_address,phone_number,physical_address,orders,comments)
VALUES ('Bonnie', 'Bennett', 'bbennett@gmail.com', '3515938469', '2136 Conyers Street SE Covington Georgia', );
INSERT INTO person (first_name,last_name,email_address,phone_number,physical_address,orders,comments)
VALUES ('Hope', 'Mikaelson', 'hmikaelson@gmail.com', '7984790197', '684 Abernathy Rd NE Sandy Springs Georgia');
INSERT INTO person (first_name,last_name,email_address,phone_number,physical_address,orders,comments)
VALUES ('Rebekah', 'Mikaelson', 'rmikaelson@gmail.com', '2493574167', '903 Commercial Street Conyers Georgia', '');

INSERT INTO customer (first_name,last_name,email_address,phone_number,physical_address)
VALUES ('Elena', 'Gilbert', 'egilbert@gmail.com', '4986914450', '2104 Maple Street Mystic Falls VA');
INSERT INTO customer (first_name,last_name,email_address,phone_number,physical_address)
VALUES ('Hayley', 'Marshall', 'hmarshall@gmail.com', '4428933207', '2129 East Street SE Covington Georgia');
INSERT INTO customer (first_name,last_name,email_address,phone_number,physical_address)
VALUES ('Bonnie', 'Bennett', 'bbennett@gmail.com', '3515938469', '2136 Conyers Street SE Covington Georgia');
INSERT INTO customer (first_name,last_name,email_address,phone_number,physical_address)
VALUES ('Hope', 'Mikaelson', 'hmikaelson@gmail.com', '7984790197', '684 Abernathy Rd NE Sandy Springs Georgia');
INSERT INTO customer (first_name,last_name,email_address,phone_number,physical_address)
VALUES ('Rebekah', 'Mikaelson', 'rmikaelson@gmail.com', '2493574167', '903 Commercial Street Conyers Georgia');

#Values needing to be created#
INSERT INTO customer (orders)
VALUE ();
INSERT INTO customer (comments)
VALUE ();

-- Table Rows (Customer Transactions) --
INSERT INTO customer_transactions (order_date,item,quantity,purchase_amount,payment_method,CustomerID,ProductID,customer_comments)
VALUE ('10/04/2024', 'Pepperoni Pizza', '2', '10.00', 'Debit', '1', '', 'Food was great! Will be coming back again soon!');

# ALTER TABLE customer_transactions
# ADD customer_comments VARCHAR (500);
# ALTER TABLE customer_transactions
# DROP name;
# ALTER TABLE customer_transactions
# MODIFY CustomerID int AFTER order_date;
# ALTER TABLE customer_transactions
# MODIFY order_date DATE AFTER customerid;

-- Table Rows (Products) --
INSERT INTO products (food)
VALUE ('Pepperoni Pizza', 'Coca-Cola', 'Sweatshirt', 50.00);


-- Table Rows (Employee Information) --

-- Table Rows (Financial Data) --

