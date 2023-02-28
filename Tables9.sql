CREATE TABLE departments (
	dept_no Varchar(30) not null Primary key,
	dept_name VARCHAR(30) not null );
	
 Create Table titles(
 	title_id Varchar(20) not null Primary Key,
	title Varchar(30) not null)
	
Create Table employees(
	emp_no int not null Primary Key,	
	emp_title_id Varchar(30) not null,	
	birth_date Date not null,
	first_name Varchar(30) not null,
	last_name Varchar (30) not null,
	sex char(1) not null,
	hire_date Date not null,
	Foreign Key (emp_title_id) References titles(title_id)
)
	
CREATE TABLE dept_emp(
	emp_no int not null,
	dept_no Varchar(30) not null,
	Foreign Key (emp_no) References employees(emp_no),
	Foreign Key (dept_no) References departments(dept_no),
	CONSTRAINT pk_emp PRIMARY KEY (emp_no, dept_no)
	)
	
Create table dept_manager(
	dept_no Varchar(30) not null,
	emp_no int not null Primary Key,
	Foreign Key (dept_no) References departments(dept_no),
	Foreign Key (emp_no) References employees(emp_no)
	)
 
 Create Table salaries(
 	emp_no int not null Primary Key,
	salary int not null,
 	Foreign Key (emp_no) References employees(emp_no)
 	)
 

	
