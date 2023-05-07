create database q3;

CREATE TABLE customer (
	customer_id INT PRIMARY KEY,
    cust_name VARCHAR(20) NOT NULL,
    city VARCHAR(20) NOT NULL,
	grade INT NOT NULL,
    salesman_id INT
);

INSERT INTO customer VALUES(3002, "Nick Rimando", "New York", 100, 5001),
		(3007, "Brad Davis", "New York", 200, 5001),
        (3005, "Graham Zusi", "California", 200, 5002),
        (3008, "Julian Green", "London", 300, 5002),
        (3004, "Fabian Johnson", "Paris", 300, 5006),
        (3009, "Geoff Cameron", "Berlin", 100, 5003),
        (3003, "Jozy Altidor", "Moscow", 200, 5007),
        (3001, "Brad Guzan", "London", NULL,5005);
	
SELECT * FROM customer;

CREATE TABLE salesman (
	salesman_id INT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    city VARCHAR(20) NOT NULL,
    commission DECIMAL(2, 2) NOT NULL
);

INSERT INTO salesman VALUES(5001, "James Hoog", "New York", 0.15),
        (5002, "Nail Knite", "Paris", 0.13),
        (5005, "Pit Alex", "London", 0.11),
        (5006, "Mc Lyon", "Paris", 0.14),
        (5007, "Paul Adam", "Rome", 0.13),
        (5003, "Lauson Hen", "San Jose", 0.12);
        
--  Write a SQL query to find those customers with a grade less than 100.
--  It should return cust_name, customer city, grade, salesman, and salesman city.
--  The result should be ordered by ascending customer_id.  

SELECT customer.cust_name, customer.city, customer.grade, salesman.name, salesman.city FROM
 customer INNER JOIN salesman ON customer.grade < 100 AND customer.salesman_id = salesman.salesman_id order by customer_id;
