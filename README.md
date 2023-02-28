# Pewlett_Hackard_Mod9
## Background
It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

## Objective
For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

## Procedure
I used SQL and PgAdmin4 to first create tables. Each table listed a primary key, or a constraint key if needed, along with foreign keys where necessary.
Six tables were created:
  * Departments
  * Employees
  * Department Managers
  * Department Employees
  * Salaries
  * Titles

I then used queries and joins to loop through tables to find information. I extracted :
  * Name, sex and salary of each employee
  * Employees hired in 1986
  * Department manager information, including name and department name
  * All department employee information
  * Employees with first name "Hercules" and last name starting with "B"
  * All employees in sales department
  * All employees in sales and development departments
  * The number of employees with each last name
