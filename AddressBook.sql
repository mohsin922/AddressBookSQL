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