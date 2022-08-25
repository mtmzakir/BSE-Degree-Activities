CREATE DATABASE Library;
USE Library;

CREATE TABLE Branches (
	Name varchar(50),
	Address varchar(50),
	PhoneNo int,
	BNumber int);
INSERT INTO Branches VALUES 
	("Batticaloa", "Main Street, Batticaloa", 0766615212, 235498489),
	("Ampara", "Main Street, Ampara", 0264215645, 654759283),
	("Colombo", "Main Street, Colombo", 0564156454, 856479283),
	("Matale", "Main Street, Matale", 0864266524, 774569283),
	("Kandy", "Main Street, Kandy", 0544215524, 774345283),
	("Jaffna", "Main Street, Jaffna", 0432156512, 754759283);


CREATE TABLE Customer (
	CustomerID varchar(40),
	Name varchar(40),
	PhoneNumber int,
	Address varchar(40),
	DOB varchar(40),
	Password varchar(40),
	PRIMARY KEY(CustomerID));
INSERT INTO Customer VALUES 
("S0001", "David", 0776465849, "1st Street, Jaffna", "11-03-1990","Davi1235"),
("S0002", "Malan", 0736465849, "2nd Street, Batticaloa", "15-03-1990","Mal1235"),
("S0003", "Suban", 0716465849, "3rd Street, Colombo", "12-04-1990","Sub1235");


CREATE TABLE Employee (
	EmployeeID varchar(30),
	JobStartDate varchar(30),
	MonthlySalary int,
	PRIMARY KEY(EmployeeID));
INSERT INTO Employee VALUES 
("LB221", "30-04-2019", 45000),
("LB222", "13-02-2021", 50000),
("LB223", "16-03-2018", 45000);


CREATE TABLE Books (
	ISBN int,
	CustomerID varchar(30),
	Title varchar(30),
	FirstAuthor varchar(30),
	Location varchar(30),
	Available varchar(30),
	CheckedOut varchar(30),
	LateReturns int,
	Lost int,
	PRIMARY KEY(ISBN));
INSERT INTO Books VALUES 
(12378, "S0001", "Dav Android", "Andro", "4th Row", "Yes", "No", 19, 10),
(12278, "S0002", "Bookie", "Boos", "5th Row", "Yes", "No", 42, 22),
(14178, "S0003", "Night Story", "Davin", "8th Row", "No", "No", 35, 30);


CREATE TABLE BookCopies (
	BookID varchar(30),
	ISBN int,
	CustomerID varchar(30),
	PRIMARY KEY(BookID));
INSERT INTO BookCopies VALUES 
("IDCDN", 12278, "S0001");


CREATE TABLE LibraryCard (
	CustomerID varchar(30));
INSERT INTO LibraryCard VALUES 
("S0001"),
("S0002"),
("S0003");


CREATE TABLE PhoneNo (
	Number int,
	PRIMARY KEY(Number));
INSERT INTO PhoneNo VALUES 
(0766615212);


CREATE TABLE Organize (
	ISBN int,
	EmployeeID varchar(30));


CREATE TABLE SignUp (
	CustomerID varchar(30));


CREATE TABLE Helps (
	EmployeeID varchar(30),
	CustomerID varchar(30));


CREATE TABLE Have (
	BookID varchar(30));
	
INSERT INTO Have VALUES 
("IDCDN");

ALTER TABLE Books ADD FOREIGN KEY(CustomerID) references Customer(CustomerID);
ALTER TABLE BookCopies ADD FOREIGN KEY(ISBN) references Books(ISBN);
ALTER TABLE BookCopies ADD FOREIGN KEY(CustomerID) references Customer(CustomerID);
ALTER TABLE LibraryCard ADD FOREIGN KEY(CustomerID) references Customer(CustomerID);
ALTER TABLE Organize ADD FOREIGN KEY(ISBN) references Books(ISBN);
ALTER TABLE Organize ADD FOREIGN KEY(EmployeeID) references Employee(EmployeeID);
ALTER TABLE SignUp ADD FOREIGN KEY(CustomerID) references Customer(CustomerID);
ALTER TABLE Helps ADD FOREIGN KEY(EmployeeID) references Employee(EmployeeID);
ALTER TABLE Helps ADD FOREIGN KEY(CustomerID) references Customer(CustomerID);
ALTER TABLE Have ADD FOREIGN KEY(BookID) references BookCopies(BookID);




#Queries Here

SELECT Title, Available FROM Books;

SELECT CustomerID FROM LibraryCard;


DELETE FROM Books WHERE FirstAuthor = "Night Story";

SELECT * FROM Books;

UPDATE Books SET Available = 'Yes', CheckedOut = 'No' 
WHERE ISBN = 1010;
SELECT * FROM Books;

SELECT CustomerID, (LateReturns + Lost) as 'Total Due' FROM Books ORDER BY CustomerID;
