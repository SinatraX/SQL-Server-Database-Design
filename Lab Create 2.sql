/*
1. Create another version of Students table called Student2. The only difference is StudentID is of the datatype varchar(5) 
and the column can only have codes which have are like AB123. First 2 characters have to be alphabets, and next 3 are integers.
*/
USE StudentDB
CREATE TABLE Student2 (
	SID VARCHAR(5) NOT NULL, 
	CHECK (SID LIKE '[A-Z] [A-Z] [0-9] [0-9] [0-9]'),
	NAME VARCHAR(50), 
	City VARCHAR(50), 
	StateCode VARCHAR(2), 
	DateOfBirth DATE NOT NULL,
	PRIMARY KEY (SID)
);
/*
2. Create another version of Grades table called Grades2. The grade column can only have between 0 and 4.0 grade.
*/
CREATE TABLE Grades2 (
	SID INT NOT NULL, 
	ClassID VARCHAR, 
	Grade REAL, 
	PRIMARY KEY (SID, CLassID), 
	CHECK (Grade >= 0 AND Grade <= 4.0)
);
/*
3. Create Table Classes
ClassID		       ClassName		Instructor ID		Date Class Offered		Section

Character 
Primary key		  Character 50		Int Primary Key		Date Primary Key		Character 1
*/
CREATE TABLE Classes (
	SID INT NOT NULL, 
	ClassID VARCHAR,
	ClassName VARCHAR(50),
	InstructorID INT,
	DateClassOffered DATE NOT NULL,
	Section VARCHAR(1),
	PRIMARY KEY (ClassID, InstructorID, DateClassOffered)
);