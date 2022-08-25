CREATE DATABASE PizzaDelights;
USE PizzaDelights;
CREATE TABLE Employee (
	EmpNo VARCHAR(7) NOT NULL ,
    EmpName VARCHAR(30) ,
    EmpWorkHrs DOUBLE ,
    EmpExtenContact INT ,
    EmpBranch VARCHAR(50) ,
    PRIMARY KEY (EmpNo));
    
INSERT INTO Employee VALUES ('PEN2206', 'E.N.T Perera',7, 221, 'Batticaloa');
INSERT INTO Employee VALUES ('PEN2207', 'T.W John',4.5, 222, 'Jaffna');
INSERT INTO Employee VALUES ('PEN2208' , 'K.D Varun',8, 223, 'Mullaitivu');
INSERT INTO Employee VALUES ('PEN2209', 'T.L Laury',7, 224, 'Colombo');
INSERT INTO Employee VALUES ('PEN2210' ,'A.T.A Sharu',9, 225, 'Kandy');

CREATE TABLE Customer (
	Cust_Id INT NOT NULL ,
    CustFirstName VARCHAR(50) ,
    CustLastName VARCHAR(30) ,
    CustAddress VARCHAR(30) ,
    CustContact INT,
    PRIMARY KEY (Cust_Id));
    
INSERT INTO Customer VALUES (9001,'Terran', 'Bernand' ,'No 23,Galle Road,Colombo 6',0774562134);
INSERT INTO Customer VALUES (9002,'Peter', 'Parker', 'KKS Road,Jaffna',0712098564);
INSERT INTO Customer VALUES (9003,'Peter', 'Robert', 'Malwatta Rd,Dehiwala,Colombo',0761993092);
INSERT INTO Customer VALUES (9004,'Anchali', 'Menon', 'Jaffna Road,Kandy',0772316178);
INSERT INTO Customer VALUES (9005,'Anika', 'Warrior', 'No 23, NewRoad,Batticaloa',0744358990);
	
CREATE TABLE Menu (
	ItemNo VARCHAR(6) NOT NULL ,
    ItemName VARCHAR(40) ,
    ItemPrice DECIMAL(6,2) ,
    PRIMARY KEY (ItemNo));
    
INSERT INTO Menu VALUES ('PZ2231','BBQChickenPizza',1200.00);
INSERT INTO Menu VALUES ('PZ2232','FriedMushroomPizza',950.00);
INSERT INTO Menu VALUES ('PZ2234','DevilledPrawnPizza',1750.00);
INSERT INTO Menu VALUES ('PZ2235','DevilledPaneerPizza',1600.00);
    
CREATE TABLE Orders (
	OrderId INT  NOT NULL ,
    OrdCustomerId INT ,
    OrdEmpNo VARCHAR(7) ,
    OrdItemNo VARCHAR(6) ,
    OrdQuantity INT ,
    OrderedDate DATE ,
    PRIMARY KEY (OrderId),
    FOREIGN KEY (OrdEmpNo) REFERENCES Employee(EmpNo),
	FOREIGN KEY (OrdCustomerId) REFERENCES Customer(Cust_ID));
    
INSERT INTO Orders VALUES (0001, 9001, 'PEN2209', 'PZ2234' ,2 , '2021/09/12');
INSERT INTO Orders VALUES (0002, 9003, 'PEN2209', 'PZ2234' ,1 , '2021/08/10');
INSERT INTO Orders VALUES (0003, 9005, 'PEN2206', 'PZ2231' ,3 , '2021/12/23');
INSERT INTO Orders VALUES (0004, 9002, 'PEN2207', 'PZ2232' ,2 , '2021/10/10');
INSERT INTO Orders VALUES (0005, 9003, 'PEN2209', 'PZ2235' ,1 , '2021/12/20');
INSERT INTO Orders VALUES (0006, 9004, 'PEN2210', 'PZ2234' ,1 , '2021/09/07');

#1
SELECT * FROM Employee;

#2
SELECT Cust_Id, CustContact FROM Customer;

#3
SELECT * FROM Employee
WHERE EmpWorkHrs = 9;

#4
SELECT OrdEmpNo , OrdCustomerId , OrdQuantity FROM Orders
WHERE OrderedDate = '2021/10/10' OR OrderedDate = '2021/09/07';

#5
SELECT OrdCustomerId, COUNT(DISTINCT OrderId) 
FROM Orders
GROUP BY OrdCustomerId
ORDER BY OrdCustomerId ASC;

#5
SELECT OrdCustomerId, Count(Orders.OrderId) AS TotalOrders
FROM Orders
GROUP BY OrdCustomerId
ORDER BY OrdCustomerId ASC;

#6
UPDATE Menu SET ItemPrice = ItemPrice+200.00;
SELECT * FROM Menu;    


#7
SELECT OrdCustomerId,OrdEmpNo,OrdItemNo FROM Orders 
WHERE OrdQuantity>=2 AND OrderedDate >= '2021/10/09';

#8
SELECT EmpName,MIN(EmpWorkHrs) FROM Employee ORDER BY EmpWorkHrs DESC;

#9
DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';

#10
UPDATE Customer SET CustContact = 0756993092 
WHERE CustFirstName='Peter' AND CustLastName='Robert';
SELECT * FROM Customer;
