-- Create a new database  "UniversityDB"
CREATE DATABASE UniversityDB;

USE UniversityDB

-- Create new Table  "Students" 
CREATE TABLE Students (
     student_id INT IDENTITY Primary Key,
	 First_name VARCHAR(50), 

SELECT *
FROM Students;

-- Create new Table  "Courses"
CREATE TABLE Courses (
FROM Courses;
	student_id INT REFERENCES Students(student_id),
ALTER COLUMN credit_hours INT;

-- DROP Datatype, Columns, and Tables
DROP TABLE Enrollments

-- DROP DATABASE "UniversityDB" 
DROP DATABASE UniversityDB
