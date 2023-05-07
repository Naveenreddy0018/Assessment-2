create database q2;

CREATE TABLE Contact_Table (
	id INT PRIMARY KEY,
	Email VARCHAR(50) NOT NULL,
    fname VARCHAR(20) NOT NULL,
    lname VARCHAR(20) NOT NULL,
    company VARCHAR(20) NOT NULL,
	Active_flag INT NOT NULL,
    opt_out INT NOT NULL
);

INSERT INTO contact_table VALUES(123, "a@a.com", "Kian", "Seth", "ABC", 1, 1),
	(133, "b@a.com", "Neha", "Seth", "ABC", 1, 0),
    (234, "c@a.com", "Puru", "Malik", "CDF", 0, 0),
    (342, "d@a.com", "Sid", "Maan", "TEG", 1, 0);
    
SELECT * FROM contact_table;

-- QUESTIONS
-- Select all columns from the contact table where the active flag is 1
SELECT * FROM contact_table WHERE Active_flag = 1;

-- Deactivate contacts who are opted out 
UPDATE contact_table SET Active_flag=0 WHERE opt_out = 0;

-- Delete all the contacts who have the company name as ‘ABC’
DELETE FROM contact_table WHERE company = 'ABC';

-- Insert a new row with id as 658, name as ‘mili’, email as ‘mili@gmail.com’, the company as ‘DGH’, active flag as 1, opt-out flag as 1
INSERT INTO contact_table VALUES(658, 'mili@gmail.com', 'mili', '', 'DGH', 1, 1); 

-- Pull out the unique values of the company column 
SELECT distinct(company) FROM contact_table;

-- Update name “mili” to “niti”.
UPDATE contact_table SET fname='niti' WHERE fname="mili";
