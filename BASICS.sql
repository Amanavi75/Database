CREATE DATABASE college;  /* create a database */
/* to create a table in any database we have to use the table */
USE college;
CREATE TABLE student (
rollno INT,
 name  VARCHAR(30),
age    INT
);
INSERT INTO student /* inserting the values into the student */ 
 values
(101, "RAVI", 12),
(102, "Anil", 13),
(103, "aman", 14);

SELECT * FROM student; /* to get the whole data */

CREATE DATABASE IF NOT EXISTS school;
DROP DATABASE IF  EXISTS school; /* USED FOR DELETING THE DATABASE IF EXIST */

USE COLLEGE;
SHOW tables;
