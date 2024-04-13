-- Create a new database  "UniversityDB"
CREATE DATABASE UniversityDB;

USE UniversityDB

-- Create new Table  "Students" 
CREATE TABLE Students (
     student_id INT IDENTITY Primary Key,
	 First_name VARCHAR(50), 	 last_name VARCHAR(50) NOT NULL,	 date_of_birth DATE, 	 major VARCHAR(30));

SELECT *
FROM Students;

-- Create new Table  "Courses"
CREATE TABLE Courses (      course_id INT IDENTITY Primary Key,	  course_name VARCHAR(50), 	  department VARCHAR(50),	  credit_hours VARCHAR(50));SELECT *
FROM Courses;-- Create new Table  "Enrollments"CREATE TABLE Enrollments (    enrollment_id INT IDENTITY Primary Key, 
	student_id INT REFERENCES Students(student_id),	course_id INT REFERENCES Courses(course_id),	enrollment_date DATE);SELECT *FROM Enrollments-- ALTER TABLE "Students"ALTER TABLE StudentsADD email VARCHAR(50) UNIQUE;SELECT *FROM Students-- ALTER TABLE "Courses"ALTER TABLE Courses
ALTER COLUMN credit_hours INT;

-- DROP Datatype, Columns, and Tables-- DROP "date_of_birth" column from the "Students" tableALTER TABLE StudentsDROP COLUMN date_of_birth;-- DROP Drop the "Enrollments" table from the "UniversityDB" database
DROP TABLE Enrollments

-- DROP DATABASE "UniversityDB" 
DROP DATABASE UniversityDB
