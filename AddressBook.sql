--Welcome to AddressBook Service

--UC1
--Create Addressbook Database 
CREATE DATABASE AddressBookService
Go
use AddressBookService
Go

--UC2
--Create table
CREATE TABLE AddressBookTable(
FirstName varchar(MAX) not null,
LastName varchar(MAX) Not Null,
Address varchar(MAX) Not Null default 'Kashmir',
City varchar(MAX) Not Null,
StateName varchar(MAX) Not Null,
ZipCode int Not Null,
Phonenum bigint Not Null,
EmailId varchar(MAX) Not Null 
)
Go
exec sp_help AddressBookTable

--UC3
--Insert Data into tables using fields
INSERT  into AddressBookTable(FirstName,LastName,Address,City,StateName,ZipCode,Phonenum,EmailId) VALUES
('Mohsin','Zahoor','Kashmir','Srinagar','J&K',193444,8792810271,'peermohsin@gmail.com'),
('Preksha','Arunachalam','Dehra','Dehradun','Himachal',3333333,8232322323,'prek@gmail.com'),
('Raj','Mahajan','Trichi','Coimbatore','Tamil Nadu',444444,9112121212,'raj@gmail.com'),
('Abdul','Ahmad','Baramulla','Srinagar','J&K',555555,9876543322,'abdul@gmail.com')
Go
---Retrieve all data from AddressBookTable---------
SELECT * FROM AddressBookTable
Go


---UC4
---Edit contact using their name
UPDATE AddressBookTable SET Phonenum=97456638984 WHERE FirstName='Mohsin'
Go
UPDATE AddressBookTable SET LastName='Raouf' WHERE FirstName='Abdul'
Go
UPDATE AddressBookTable SET EmailId='raj12@gmail.com' WHERE LastName='Mahajan'
Go
select * from AddressBookTable
Go

----UC5
----Delete contact using their name
DELETE FROM AddressBookTable WHERE FirstName='Preksha'
Go
SELECT * FROM AddressBookTable
Go

--UC6
--Retrieve person's City
SELECT FirstName FROM  AddressBookTable WHERE City='Coimbatore' or StateName='Tamil Nadu'
Go

--UC7
--Size of the Address book
SELECT COUNT(City) AS Size,City,StateName FROM AddressBookTable GROUP BY StateName,City
Go

--UC8
select * from AddressBookTable
where City = 'Srinagar'
order by (FirstName)
Go

--UC9
Alter table AddressBookTable add Name varchar(MAX),Type varchar(MAX)
Go

update AddressBookTable set Name='Mohsin Zahoor' where firstName ='Mohsin'
update AddressBookTable set Name='Raj Mahajan' where firstName ='Raj'
update AddressBookTable set Name='Abdul Raouf' where firstName ='Abdul'
GO

update AddressBookTable set Type ='Family' where firstName='Mohsin'
update AddressBookTable set Type ='Professional' where firstName='Raj'
update AddressBookTable set Type ='Friends' where firstName='Abdul'
Select * from AddressBookTable

--UC10
select count(type) 
from AddressBookTable
Go
select Type, count(TYPE) as TypeCount 
from AddressBookTable
group by Type
Go


--UC11
delete AddressBookTable where firstName ='Abdul'
INSERT  into AddressBookTable(FirstName,LastName,Address,City,StateName,ZipCode,Phonenum,EmailId,Name,Type) VALUES
('Abdul','Raouf','Baramulla','Srinagar','J&K',555555,9876543322,'abdul@gmail.com','Abdul Raouf', 'Friend')
GO
INSERT  into AddressBookTable(FirstName,LastName,Address,City,StateName,ZipCode,Phonenum,EmailId,Name,Type) VALUES
('Abdul','Raouf','Baramulla','Srinagar','J&K',555555,9876543322,'abdul@gmail.com','Abdul Raouf', 'Family')
GO
Select * from AddressBookTable