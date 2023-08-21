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
/*create table Employees(emp_id int primary key,emp_name varchar(50),Creation_date datetime,Email text);
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
*/





--Pratice(21/8/23)

--creating a database
create database Diksha;

--For backingup the data
backup database diksha to disk='C:\Database\backup1.bak';

--For restoring the data
Restore database diksha from disk ='C:\Database\backup1.bak';

--creating a table
create table Fruits(F_id int primary key,f_name text,f_price float);

--inserting values to the table
insert into Fruits values(123,'Apple',34.00);

--delete the data inside the table
truncate table Fruits;

--adding a column after creating the table
alter table Fruits add f_sell int;

select * from Fruits;

--delete the column
alter table Fruits drop column f_sell,f_price;

--adding more than one column
alter table Fruits add f_sell int,f_price float;

--creating table with not null unique
create table Person(p_id int primary key,p_name varchar(50),p_address text,p_age int not null unique);

--Removing uniqueness
alter table Person drop constraint UQ_Person_FCF23F7D35FC67CA;


select GETDATE() as[GETDATE()];

--Problem:Store salary of each employees monthly basis
create table Employee1(emp_id int primary key,emp_name varchar(50),emp_address text,Creation_date datetime,Email text);

create table Salary2(sal_id int primary key,emp_id int,foreign key (emp_id) references Employee1(emp_id),Creation_date datetime,bank_acc bigint);
alter table Salary2 add month_credited varchar(50);

insert into Employee1 values(5570,'Diksha','Hyderabad',GETDATE(),'diksha@prolifics'),(5571,'Riva','Vadodara',GETDATE(),'riva@prolifics'),(5572,'Ajay','Bengluru',GETDATE(),'ajay@prolifics'),(5573,'Jaya','Ahmedabad',GETDATE(),'jaya@prolifics');

select * from Employee1;

insert into Salary2 values(1256,5570,GETDATE(),4238457,'January'),(1666,5571,GETDATE(),4238457,'February'),(1006,5572,GETDATE(),77436325,'January'),(1278,5573,GETDATE(),435554,'November');

select * from Salary2;


--Task
--Create one database which should keep 32 people information, salary information, daily attendance 

create table Employee2(emp_id int primary key,emp_name varchar(50),date_of_join text,creation_date datetime,email text);

create table Attendance(attendance_id int primary key,emp_id int,foreign key (emp_id) references Employee2(emp_id),creation_date datetime,status varchar(50));

create table Salary(sal_id int primary key,emp_id int,foreign key (emp_id) references Employee2(emp_id),creation_date datetime,credited_month varchar(50),amount float);

insert into Employee2 values (5501,'Riya','15-4-2023',GETDATE(),'riya@prolifics.com'),
(5502,'Divya','15-4-2023',GETDATE(),'divya@prolifics.com'),(5503,'Diksha','15-6-2023',GETDATE(),'diksha@prolifics.com'),
(5504,'Krishna','15-6-2023',GETDATE(),'krish@prolifics.com'),(5505,'Kartik','15-4-2023',GETDATE(),'kar@prolifics.com');

select * from Employee2;

insert into Attendance values (770,5501,GETDATE(),'Present'),(771,5502,GETDATE(),'Present'),
(772,5503,GETDATE(),'Absent'),(773,5504,GETDATE(),'Present'),(774,5505,GETDATE(),'Leave');

select * from Attendance

insert into Salary values (123,5501,GETDATE(),'Jan',23000.00),(124,5502,GETDATE(),'Jan',23700.00),
(125,5501,GETDATE(),'feb',25000.00),(126,5503,GETDATE(),'Jan',23000.00),(127,5504,GETDATE(),'Jan',20000.00),
(128,5505,GETDATE(),'Jan',15000.00),(129,5502,GETDATE(),'feb',23000.00),(130,5503,GETDATE(),'march',25000.00),
(131,5504,GETDATE(),'feb',23000.00),(132,5505,GETDATE(),'march',15000.00);

select * from Salary;



--multiple foreign keys

create table Employee5(emp_id int ,emp_name varchar(50),email text,creation_date datetime,primary key(emp_id,emp_name));

create table Salary5(sal_id int,emp_id int,emp_name varchar(50),
foreign key(emp_id,emp_name) references Employee5(emp_id,emp_name),
Amount float,creation_date datetime);


insert into Employee5 values(5512,'Diksha','diksha@gmail.com',GETDATE()),
(5513,'Riva','riva@gmail.com',GETDATE()),
(5514,'Siya','siya@gmail.com',GETDATE());

select * from Employee5;

insert into Salary5 values(1001,5512,'Diksha',23000.00,GETDATE()),
(1002,5513,'Riva',23034.00,GETDATE()),
(1003,5514,'Siya',28000.00,GETDATE());


alter table Salary5 drop constraint FK__Salary5__29E1370A;

select * from Salary5;


--Task
--Age is not >60 &<18

create table Employee6(emp_id int primary key,
emp_name varchar(50) not null,Age int not null check(age>18 and age<60)
,Email text);

--Checking the salary
Create table Employee7(Emp_id int primary key,Emp_name varchar(50) not null,salary int);

alter table Employee7 add constraint law check (salary > 50000);

--adding default salary
alter table Employee7 add constraint notnull default(70000) for salary;

insert into Employee7 values (5501,'Diksha',55000);

insert into Employee7(emp_id,emp_name) values(5002,'Richa');

select * from Employee7;


--Default values
Create table Employee8(emp_id int primary key,emp_name varchar(50),company_name varchar(100) );

alter table Employee8 add constraint defaultname default('Prolifics') for company_name;

insert into Employee8(emp_id,emp_name) values(5501,'Diksha'),(5502,'Reena');

select * from Employee8;


--Pratice

create table Employee9(emp_id int primary key,emp_name varchar(50),email text,creation_date datetime,Age int);

--Checking the age value
alter table Employee9 add constraint agecheck check(age>18 and age<60); 

--adding default employee name
alter table Employee9 add constraint defaultvalue default('Prolifics') for emp_name;


create table Salary6(sal_id int,emp_id int,
foreign key(emp_id) references Employee9(emp_id),
Amount float,creation_date datetime);

--Checking salary amount
alter table Salary6 add constraint checksal check(Amount>10000) ;

--Checking the age condition
insert into Employee9 values (5501,'Diksha','diksha@prolifics.com',GETDATE(),10);

insert into Employee9 values (5501,'Diksha','diksha@prolifics.com',GETDATE(),23),
(5502,'Reena','ree@prolifics.com',GETDATE(),30);

--Checking the default constraint
insert into Employee9(emp_id,email,age) values(5503,'dee@prolifics.com',26);

select * from Employee9;

--Checking the salary condition
insert into Salary6 values(112,5501,3000,GETDATE());

insert into Salary6 values(112,5501,30000,GETDATE()),
(113,5502,28000,GETDATE());

select * from Salary6;


