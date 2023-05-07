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



