-- James Vigilante Fall 2021
DROP DATABASE IF EXISTS assignment5_db;
CREATE DATABASE assignment5_db;
USE assignment5_db;

CREATE TABLE courses
(
	course_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    course_department VARCHAR(4) NOT NULL,
    course_number INT NOT NULL,
    course_name VARCHAR(255) NOT NULL
);
CREATE TABLE majors
(
	major_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    major_name VARCHAR(255) NOT NULL
);
CREATE TABLE students
(	student_number INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	student_id VARCHAR(255) NOT NULL,
    student_first_name VARCHAR(255) NOT NULL, 
    student_last_name VARCHAR(255) NOT NULL,
    student_address VARCHAR(255) NOT NULL,
    student_email VARCHAR(255) NOT NULL,
    course_id INT,
    major_id INT,
    CONSTRAINT FOREIGN KEY (course_id) REFERENCES courses(course_id),
	FOREIGN KEY (major_id) REFERENCES majors(major_id)
);
-- Am I using auto-increment wrong, or do I have to have a value for that column when inserting this data?
-- cuz it was returning a column mismatch error before i added these 0's
INSERT INTO courses VALUES
(0,"IT", 1025, "Concepts for Programmers"),
(0,"IT", 1050, "Programming Logic"),
(0,"IT", 2351, "Enterprise Database Systems"),
(0,"MATH", 1200, "Math Explorations"),
(0,"ENG", 1100, "College Composition"),
(0,"SOC", 1100, "Sociology");
INSERT INTO majors VALUES
(0, "Programming"),
(0, "Networking"),
(0, "Undeclared");
INSERT INTO students VALUES
(0, "S1", "Joe", "Smith", "124 Main St", "Joe@School.edu", 1, 1),
(0, "S1", "Joe", "Smith", "124 Main St", "Joe@School.edu", 2, 1),
(0, "S1", "Joe", "Smith", "124 Main St", "Joe@School.edu", 4, 1),
(0, "S2", "Sue", "Brown", "345 Second St", "Sue@School.edu", 1, 1),
(0, "S2", "Sue", "Brown", "345 Second St", "Sue@School.edu", 2, 1),
(0, "S2", "Sue", "Brown", "345 Second St", "Sue@School.edu", 3, 1),
(0, "S3", "Nick", "Green", "45 York Rd", "Nick@School.edu", 1, 2),
(0, "S4", "Andy", "Andrews", "600 5th Ave", "Andy@School.edu", 1, 2),
(0, "S4", "Andy", "Andrews", "600 5th Ave", "Andy@School.edu", 2, 2),
(0, "S5", "Remus", "Romulus", "91234 7th St", "wolfBrothers@School.edu", 1, 1),
(0, "S5", "Remus", "Romulus", "91234 7th St", "wolfBrothers@School.edu", 2, 1),
(0, "S5", "Remus", "Romulus", "91234 7th St", "wolfBrothers@School.edu", 4, 1),
(0, "S5", "Remus", "Romulus", "91234 7th St", "wolfBrothers@School.edu", 5, 1),
(0, "S6", "Worf", "Mogh", "00001 Enterprise Dr", "sonOfMogh@School.edu", 4, 3),
(0, "S6", "Worf", "Mogh", "00001 Enterprise Dr", "sonOfMogh@School.edu", 5, 3),
(0, "S6", "Worf", "Mogh", "00001 Enterprise Dr", "sonOfMogh@School.edu", 6, 3),
(0, "S7", "Crash", "Bandicoot", "23598 Wumpa Ln", "WumpaPls@School.edu", 4, 3),
(0, "S7", "Crash", "Bandicoot", "23598 Wumpa Ln", "WumpaPls@School.edu", 5, 3),
(0, "S7", "Crash", "Bandicoot", "23598 Wumpa Ln", "WumpaPls@School.edu", 6, 3);