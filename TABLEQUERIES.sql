CREATE DATABASE IF NOT exists INSTAGRAM;
USE INSTAGRAM;
CREATE TABLE USER(
ID INT ,
AGE INT,
NAME VARCHAR(30) ,
EMAIL VARCHAR(50) UNIQUE,
FOLLOWERS INT default 0,
FOLLOWING INT,
constraint CHECK (AGE>=13),
PRIMARY KEY (ID)
);
/* constraints are the rule for data in a table */
/* NOT NULL - COLUMNS CAN NOT have null values 
UNIQUE - all values in column are different 
DEFAILT  - Sets the default value of a column 
CHECK - it can limit the values allowed in a column */ 

/* KEY CONSTRAINTS 
PRIMARY KEY - makes a column unique and not null but used for only one 
FOREIGN KEY - prevent actions that would destroy links between tables they can have duplicate and null values
 they can be multiple
*/

CREATE TABLE POST (
ID INT PRIMARY KEY,
CONTENT VARCHAR(300),
USER_ID INT,
FOREIGN KEY (USER_ID) REFERENCES USER(ID)
);

INSERT INTO USER 
(ID,AGE,NAME,EMAIL,FOLLOWERS,FOLLOWING)
VALUES
(1, 14,"ADAM","ADAM@GMAIL.COM",13,17),
(2, 15,"ADM","ADM@GMAIL.COM",13,17),
(3, 16,"AAM","AAM@GMAIL.COM",13,17),
(4, 17,"ADA","ADA@GMAIL.COM",13,17);

/* SELECT - SELECT AND SHOW DATA FROM THE DATABASE */
SELECT ID,NAME,EMAIL FROM USER;