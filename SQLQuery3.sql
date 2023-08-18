/*create table orders(order_id int not null,
order_date date null,customer_id int not null);

create table customers(customer_id int not null,
customer_phone varchar(12) null,customer_email text null);

create table orders_items(order_id int,item_id int);

create table items(item_id int,item_name varchar(100),
item_price numeric);

create table property(lead_name varchar(20),location text,budget float,gen_date date,property_type text);

create table product(product_id int primary key,product_name varchar(50),description text,price float,Category varchar(10));

create table supplier(supp_id int primary key,supp_name varchar(20),supp_contact int);

create table stock(stock_id int primary key,product_id int,foreign key (product_id) references product(product_id),quantity int);

create table orders(order_id int primary key,product_id int,foreign key (product_id) references product(product_id),order_date date,Totalamount float);

truncate table Registration_table;

insert into customers values(5561,'345678','diksha@gmail.com');

insert into customers values(5522,'3278','meghna@gmail.com');


select * from customers;

 drop table customers;

 create table Signup(user_id int primary key,username text,password varchar(10));  //signup table
 

 insert into Signup values(554,'megh@gmail.com','567Abc'),(223,'kar@gmail.com','236xyx'),(345,'manver@gmail.com','4567'),(550,'ajaySaxena@gmail.com','ajay1234');

 select * from Signup;  //Showing all the data of signuptable

//18Aug


 use aug; //selecting the database

 create table pratice(id int primary key,name varchar(50),dateofcreation datetime,addresses text); 

 insert into pratice values(1234,'Diksha','2023-8-18 9:28','madhavpur hyderabad'),(5678,'Ajay','2019-12-8 6:34','Ajawa Road Vadodara'),(5567,'Kartik','2012-2-3 8:28','Hitech city Hyderabad');


  select * from pratice; //showing all the details of pratice table


 create database diksha;  //creating a new database

 

 backup database diksha to disk='C:\Database\backup.bak'; //For backup

 restore database diskha from disk='C:\Database\backup.bak';   //for restore 

 drop table book;*/

--Today Task

--for creating a table name registration
--create table Registration(user_id int primary key,createdOn datetime,mobile_no int);


--for adding a new column in a table 
--alter table Registration add username varchar(50);  

--for adding a new column in a table
--alter table Registration add addresses text;

--for adding more than one column
--alter table Registration add Gender char(1),Pan_No varchar(10);

--for changing the datatype
--alter table Registration alter column addresses varchar(100);

--for droping the column
--alter table Registration drop column addresses;
--alter table Registration drop column Gender;

--drop table Registration;

--Task2


--create table Registration(username varchar(50),passwords varchar(8),Addhar_no int not null unique);

--Entering the data in table Registration
--insert into  Registration values('dikshasingh','diksha4',78965446),'Meghnasingh','megh7607',2345568);

--select * from Registration;


--Task 3

--Adding one column employee id with unique value
--alter table Registration add Emp_id int not null unique;
--alter table Registration add unique (Addhar_no);




--Removing unique
--alter table Registration drop constraint UQ_Registra_919ED8;

--insert into Registration values('Diksha','disha45',768546,5571),('Ajay','ajay123',768546,5570);

--truncate table Registration;
--select * from Registration;

--drop table Resgtartion;

--unique key allow one null value
--create table Resgtartion(Id int  unique);

--insert into Resgtartion values(null);

--drop table Resgtartion;

--primary key is combination of not null+unique
--create table Resgtartion(Id int  primary key);

--insert into Resgtartion values(null);

--drop table Resgtartion;
--create table Registration(id int primary key,Mobile_no int not null unique);
 

--Task 4

--create table Login(Id int not null,username varchar(50));

--making id as primary key
--alter table Login add primary key (Id);


--Assignment


--create table Employees(emp_id int primary key,Emp_name varchar(50),deptartment text);

--insert into Employees values(5567,'Diksha','Engineering'),(6675,'Ajay','Marketing'),(5570,'Dinesh','Engineering');

--create table Salarydetails(Salary_id int primary key,emp_id int,foreign key (emp_id) references Employees(emp_id),credited_date date,Amount float);

--insert into Salarydetails values(2345,5567,'2023-1-12',28000.00),(1678,6675,'2023-4-18',150000.00),(6789,5570,'2023-5-15',15000.00);

--select * from Salarydetails;
--select * from Employees;



--select GETDATE() as[GETDATE()];

--Creating table Employee
create table Employees(emp_id int primary key,emp_name varchar(50),Creation_date datetime,Email text);
--Inserting values to Employee table
insert into Employees values(5570,'Diksha',GETDATE(),'diksha@prolifics'),(5571,'Riva',GETDATE(),'riva@prolifics'),(5572,'Ajay',GETDATE(),'ajay@prolifics'),(5573,'Jaya',GETDATE(),'jaya@prolifics');
insert into Employees values(5574,'Kartik',GETDATE(),'kar@prolifics'),(5575,'Reema',GETDATE(),'ree@prolifics');
select * from Employees;

--Creating Account table for Employees
Create Table AccountDetails(acc_id int primary key,acc_no bigint unique,
emp_id int foreign key references Employees(emp_id),creation_date datetime);

insert into AccountDetails values(1225,5678920,5570,GETDATE()),(1124,5678921,5571,GETDATE()),
(1125,5678234,5572,GETDATE()),(1445,567834,5573,GETDATE()),(1025,5678560,5574,GETDATE()),(1001,567000,5575,GETDATE()),(1905,437648316,5570,GETDATE());

select * from AccountDetails;

--Creating  table SalaryDetails

create table SalaryDetails(sal_id int primary key,emp_id int,acc_id int,Creation_date datetime,Amount float,Credited_month varchar(50));
alter table SalaryDetails add foreign key (emp_id) references Employees(emp_id);
alter table SalaryDetails add foreign key (acc_id) references AccountDetails(acc_id);

select *from SalaryDetails;

insert into SalaryDetails values(112,5570,1225,GETDATE(),32000.00,'August'),
(113,5571,1124,GETDATE(),2879.00,'August'),
(116,5570,1125,GETDATE(),28000.00,'July'),
(114,5572,1445,GETDATE(),23000.00,'August'),(119,5573,1025,GETDATE(),34000.00,'January'),
(120,5574,1001,GETDATE(),34000.00,'Febuary'),(101,5575,1905,GETDATE(),24000.00,'April');

























