-- Exercise 1 (5 marks):
-- Create a database schema for the online consultation and therapy website. The database should contain the following tables:-
-- Doctor table:- The table should contain the attributes such as id, name, specialization, etc.
-- Appointments table:- The table should contain information related to appointments set up by doctors and patients.
-- Patient table:- The table should contain information on patients.
-- Reviews table:- This table should contain reviews posted by patients.
-- NOTE:- Use proper constraints on the attributes such as primary key, not null and etc.

create database online_consultation;

CREATE TABLE doctor (
	doc_id INT PRIMARY KEY,
    doc_name VARCHAR(30) NOT NULL,
    doc_specialization VARCHAR(20) NOT NULL
);

CREATE TABLE appointments (
	apt_no INT PRIMARY KEY,
    pat_id INT NOT NULL,
    doc_id INT NOT NULL,
    doc_name VARCHAR(30) NOT NULL
);
	
CREATE TABLE patient (
	pat_id INT PRIMARY KEY,
    pat_name VARCHAR(30) NOT NULL,
    pat_age INT NOT NULL
);

CREATE TABLE review (
	pat_id INT PRIMARY KEY,
    pat_review INT NOT NULL
);



-- Exercise 2 (5 marks):
-- QUESTIONS:
-- 1.Select all columns from the contact table where the active flag is 1
SELECT * FROM contact_table WHERE Active_flag = 1;

-- 2.Deactivate contacts who are opted out 
UPDATE contact_table SET Active_flag=0 WHERE opt_out = 0;

-- 3.Delete all the contacts who have the company name as ‘ABC’
DELETE FROM contact_table WHERE company = 'ABC';

-- 4.Insert a new row with id as 658, name as ‘mili’, email as ‘mili@gmail.com’, the company as ‘DGH’, active flag as 1, opt-out flag as 1
INSERT INTO contact_table VALUES(658, 'mili@gmail.com', 'mili', '', 'DGH', 1, 1); 

-- 5.Pull out the unique values of the company column 
SELECT distinct(company) FROM contact_table;

-- 6.Update name “mili” to “niti”.
UPDATE contact_table SET fname='niti' WHERE fname="mili";



-- Exercise 3 (10 marks):

-- Write a SQL query to find those customers with a grade less than 100. 
-- It should return cust_name, customer city, grade, salesman, and salesman city. 
-- The result should be ordered by ascending customer_id.
SELECT customer.cust_name, customer.city, customer.grade, salesman.name, salesman.city FROM
 customer INNER JOIN salesman ON customer.grade < 100 AND customer.salesman_id = salesman.salesman_id order by customer_id ASC;
 
