--1.Create Database
create database CustomerService;

--2.create table
create table Customer(CustomerId int Identity(1,1),CustomerName varchar(50), Phone bigint, Address varchar(200));
select * from Customer;

--3.add customer details
insert into Customer values('Ram Shinde',1020304050,'Maharashtra'),
('Raj Shinde',4050607080,'Maharashtra'),
('Manoj Jarange',8090605145,'Pune');

--4.add new columns
alter table Customer add Country varchar(50),Salary decimal(10,2),Pincode int;
update Customer set Country='India',Salary=20000,Pincode=431108;

--5.update customer details
update Customer set Salary=45000,Pincode=431109 Where CustomerName='Raj Shinde';
update Customer set Salary=50000,Pincode=431156 Where CustomerName='Manoj Jarange';

--6.number of customer in country
select count(CustomerId) as NumberOfCustomers from Customer Where Country='India';

--7.show maximum, minimum, total and average salary
select max(Salary) as maximumsalary from Customer;
select min(Salary) as minimumsalary from Customer;
select sum(Salary) as totalsalary from Customer;
select avg(Salary) as averagesalary from Customer;

--8.crete order table
create table Orders(OrderId int ,Product_Name varchar(20),Quantity int, Rating int);

--9.fetch data from both tables
select * from Customer;
select * from Orders;
