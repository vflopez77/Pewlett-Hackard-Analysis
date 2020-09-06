# Pewlett-Hackard-Analysis

## Project Overview
The Pewlett-Hackard Corporation is facing a number of impending retirements.  In order to plan for this, they need to know what positions are retiring and who may be elibible to mentor their replacements.  Comprehensive employee data has been provided in 6 csv (flat) files for this analysis.

### Plan for the Employment Retirement Analysis
#### Relational Database Structure
- In order to do the analysis, the six files were imported to a Postgress database called <b>PH-EmployeeDB</b> as follows:
  - departments.csv containing department names and numbers to the <b>departments</b> table
  - dept_emp.csv containing employee numbers mapped to their departments numbers and dates of membership to the <b>dep_emp</b> table
  - dept_manager.csv mapping department numbers to manager employee numbers and dates of service to the <b>dept_manager</b> table
  - employees.csv containing emplyee information and hire dates to the <b>employees</b> table
  - salaries.csv contaning employee salaries to the <b>salaries</b> table
  - titles.csv contaning employee numbers, titles, and dates to the <b>titles</b> tables
  
- These tables were structured and related as follows:<br><br>
<img src=EmployeeDB.png></img><br>
#### Employee Data Analyses
The following analyses were done on the data:
- The employees that are likely to retire are identified by their birth dates (1952-1955) with their current titles and put into the <b>unique_titles</b> table using the following SQL code:
```
-- Getting Retiring Employees by Title
SELECT 	e.emp_no, 
		e.first_name, 
		e.last_name,
		ti.title,
		ti.from_date,
		ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Distinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) 
		rt.emp_no,
		rt.first_name,
		rt.last_name,
		rt.title
INTO unique_titles
FROM retirement_titles as rt
ORDER BY rt.emp_no, rt.from_date DESC;
```
- There are <b>90,398</b> employees that fall into the retiring category.<br><br>
- Counts by title for these employees are then produced and put into the <b>retiring_titles</b> table:
```
-- Getting Retiring Titles
SELECT COUNT(title), title 
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;
```
  - This is the result of the Retiring Titles analysis:<br><br>
  <img src=/Resources/retiring_titles.png></img><br>
