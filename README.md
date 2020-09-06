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
#### Data Analyses
The following analyses were done on the data:
