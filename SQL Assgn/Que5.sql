-- To solve below queries use "hr" database
use hr_DB;

-- •	Display first name and last name after converting the first letter of each name to upper case andthe rest to lower case.
Select UPPER(SUBSTRING(First_name, 1,1))+ 
LOWER(SUBSTRING(First_name, 2, Len(First_Name)-1))As First_name,UPPER(SUBSTRING(last_name, 1,1))+ 
LOWER(SUBSTRING(last_name, 2, Len(last_Name)-1))As last_name from employees

-- •	Display the first word in job title.
select upper(substring(job_title,1,1)) as firstjobtitle from jobs

-- •	Display the length of first name for employees where last name contain character ‘b’ after 3rdposition.
select len(first_name) as firstnamelen from employees where last_name like '___b%'

-- •	Display first name in upper case and email address in lower case for employees where the firstname and email address are same irrespective of the case.
select upper(first_name),lower(email) from employees  

-- •	Display first name, salary, and round the salary to thousands.
SELECT FIRST_NAME, SALARY, ROUND(SALARY, -3) FROM EMPLOYEES

-- •	Display employee ID and the date on which he ended his previous job.
SELECT EMPLOYEE_ID, MAX(END_DATE) AS LAST_DATE FROM JOB_HISTORY GROUP BY EMPLOYEE_ID;

-- •	Display first name and date of first salary of the employees.
SELECT FIRST_NAME, HIRE_DATE, LAST_DAY(HIRE_DATE)+1 FROM EMPLOYEES;

-- •	Display first name and experience of the employees
SELECT EMPLOYEE_ID, FIRST_NAME, DEPARTMENT_ID, JOB_ID, CONVERT(VARCHAR(3),DATEDIFF(MONTH, HIRE_DATE, GETDATE())/12) +' YEARS '+ CONVERT(VARCHAR(2),DATEDIFF(MONTH, HIRE_DATE, GETDATE()) % 12)+ ' MONTHS' AS EXPERIENCE FROM EMPLOYEES;

-- •	Display first name of employees who joined in 2001.
SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES WHERE HIRE_DATE BETWEEN '2001-01-01' AND '2001-12-12';

-- •	Display employees who joined in the current year.
SELECT * FROM employees WHERE YEAR(HIRE_DATE)= YEAR(GETDATE());

-- •	Display number of employees joined after 15th of the month
SELECT DATEDIFF(DAY, '20110101', GETDATE()) AS TOTAL_DAYS;

-- •	Display third highest salary of employees.
SELECT * FROM EMPLOYEES WHERE DATEPART(DAY FROM HIRE_DATE) > 15;

