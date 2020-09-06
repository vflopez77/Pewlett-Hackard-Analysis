# Pewlett-Hackard-Analysis

## Project Overview
The Pewlett-Hackard Corporation is facing a number of impending retirements.  In order to plan for this, they need to know what positions are retiring and who may be elibible to mentor their replacements.  Comprehensive employee data has been provided in 6 csv (flat) files for this analysis.

### Plan for the Employment Retirement Analysis
- The six files will be imported to a Postgress database as follows:
  - departments.csv containing department names and numbers to the departments table
  - dept_emp.csv containing employee numbers mapped to their departments numbers and dates of membership to the dep_emp table
  - dept_manager.csv mapping department numbers to manager employee numbers and dates of service to the dept_manager table
  - employees.csv containing emplyee information and hire date to the employees table
  - salaries.csv containg employee salaries to the salaries table
  - titles.csv containg employee numbers, titles, and dates to the title tables
  
- These tables were structured and related as follows:<br><br>
<img src=EmployeeDB.png></img><br>
