use [Adventure works];

create table Tbl_Employee(EmpId varchar(10) primary key,EmpName Varchar(50),DOB date,Gender varchar(1),ContactNo Varchar(10),EmailId varchar(50),DOJ date,Department varchar(20),Designation varchar(20),Salary decimal(10,2),Password1 varchar(20),RoleId int references Tbl_Role(RoleId),DeleteFlag varchar(1));
create table Tbl_Role(RoleId int primary key,Roles varchar(50))
insert into Tbl_Employee
 (EmpId,EmpName,DOB,Gender,ContactNo,EmailId,DOJ,Department,Designation,Salary,Password1,RoleId,DeleteFlag) values
 ('10001','Reshma','02-NOV-1985','F',9966554477,'reshma@gmail.com','11-OCT-2013','Finance','Sr. Developer',45000.50,'resh123',20001,'N');

insert into Tbl_Role (RoleId,Roles) values(20001,'Admin');
insert into Tbl_Role (RoleId,Roles) values(20002,'Super_user');
insert into Tbl_Role (RoleId,Roles) values(20003,'HR');
insert into Tbl_Role (RoleId,Roles) values(20004,'User');

  select * from Tbl_Employee
  select * from Tbl_Role

  update Tbl_Employee set Designation='clerk' where EmpId=10005;
  drop table Tbl_Employee
  --@EId int,@Pass varchar(20),@Roles varchar(50)
  
  create proc AddDetails
   @Empid int,@Empname Varchar(50),@dob date,@gender varchar(1),@Contactno Varchar(10),@Emailid varchar(50),@doj date,@department varchar(20),@designation varchar(20),@salary decimal(10,2),@password1 varchar(20),@roleid int
   as
  begin
  insert into Tbl_Employee(EmpId,EmpName,DOB,Gender,ContactNo,EmailId,DOJ,Department,Designation,Salary,Password1,RoleId,DeleteFlag) 
  values(@Empid,@Empname,@dob,@gender,@Contactno,@Emailid,@doj,@department,@designation,@salary,@password1,@roleid,'N');
  End

   drop proc AddDetails

   insert into Tbl_Employee
 (EmpId,EmpName,DOB,Gender,ContactNo,EmailId,DOJ,Department,Designation,Salary,Password1,RoleId,DeleteFlag) values
 ('10002','Supritha','18-May-1997','F',9966643567,'supritha@gmail.com','15-jan-2015','Automation','Trainee',25000.50,'pass1234',20004,'N');

 select * from Tbl_Employee where EmpId ='10002';
 alter table Tbl_Employee alter column EmpId varchar(10);
 drop table Tbl_Employee
                    
create proc updateDetails
   @Empid int,@Empname Varchar(50),@dob date,@gender varchar(1),@Contactno Varchar(10),@Emailid varchar(50),@doj date,@department varchar(20),@designation varchar(20),@salary decimal(10,2),@password1 varchar(20),@roleid int
   as
  begin
  update  Tbl_Employee set EmpName=@Empname,DOB=@dob,Gender=@gender,ContactNo=@Contactno,EmailId=@Emailid,DOJ=@doj,Department=@department,Designation=@designation,Salary=@salary,Password1=@password1,RoleId=@roleid 
  where EmpId=@EmpId
  End
