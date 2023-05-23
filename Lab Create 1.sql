/* Lab

Q A-
1. Create a Database named MyFirstDB1
2. Execute USE MyFirstDB1.
3. What could happen if we do not do step (2)
4. Create a table named MyFirstTable with one Column Name.
This column will store names. The maximum length of a name can be 50 characters.
*/
CREATE DATABASE MyFirstDB1
USE MyFirstDB1
CREATE TABLE MyFirstTable (
	ColumnName VARCHAR(50)
);

-- 2 Answer: If we skip step 2, then database might show error message. USE element can check
-- if CREATE DATABASE/TABLE is successful or fail.
 
/*
Q B –
1. Create a Database called StudentDB
2. In the StudentDB database create a table named Students
SID				Name	                  City	               StateCode	    Date Of Birth
Character	    Character 50 Max          Character 50	       Character 2		Date
Primary        
key       
*/	
CREATE DATABASE StudentDB
USE StudentDB
CREATE TABLE Students (
	SID VARCHAR NOT NULL,
	NAME VARCHAR(50) NOT NULL,
	City VARCHAR(50),
	StateCode VARCHAR(2),
	DateOfBirth DATE NOT NULL,
	PRIMARY KEY (SID)
);	

/*
3. In the StudentDB database create a table called Grades
SID		             ClassID		            Grade
Int Primary Key		 Character Primary Key		Real Number
*/
CREATE TABLE Grades (
	SID INT NOT NULL, 
	ClassID VARCHAR,
	Grade REAL,
	PRIMARY KEY (SID, ClassID)
);