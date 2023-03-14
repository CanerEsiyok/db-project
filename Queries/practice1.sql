/*1. List all the employees first and last name with their salary in employees table
  2. how many employees have salary less than 5000?
  3. how many employees have salary between 6000 and 7000?
  4. List all the different region_ids in countries table
  5. display the salary of the employee Grant Douglas (lastName: Grant,  firstName: Douglas)*/
  select FIRST_NAME, LAST_NAME,SALARY from EMPLOYEES;
select count(*) from EMPLOYEES where SALARY<5000;
select count(*) from EMPLOYEES where SALARY>6000 and SALARY<7000;
select distinct REGION_ID from COUNTRIES;
select SALARY from EMPLOYEES where LAST_NAME='Grant' and FIRST_NAME='Douglas';
/*6. display the maximum salary in employees table
7. display all informations of the employee who has the highest salary in employees table
8. display the the second maximum salary from the employees table
9. display all informations of the employee who has the second highest salary
10. display the the minimum salary in employees table*/
select max(SALARY) from EMPLOYEES;
select * from EMPLOYEES where SALARY=(select max(SALARY) from EMPLOYEES);
select max(SALARY) from EMPLOYEES where SALARY<(select max(SALARY) from EMPLOYEES);
select * from EMPLOYEES where SALARY=(select max(SALARY) from EMPLOYEES where SALARY<(select max(SALARY) from EMPLOYEES));
select min(SALARY) from EMPLOYEES;
/*11. display all informations of the employee who has the minimum salary in employees table
12. display the second minimum salary from the employees table
13. display all informations of the employee who has the second minimum salary
14. display the average salary of the employees;
15. list all the employees who are making above the average salary;*/
select * from EMPLOYEES where SALARY=(select min(SALARY) from EMPLOYEES);
select min(SALARY) from EMPLOYEES where SALARY>(select min(SALARY) from EMPLOYEES);
select * from EMPLOYEES where SALARY=(select min(SALARY) from EMPLOYEES where SALARY>(select min(SALARY) from EMPLOYEES));
select round(avg(SALARY),2) from EMPLOYEES;
select * from EMPLOYEES where SALARY>(select round(avg(SALARY),2) from EMPLOYEES) order by SALARY desc ;
/*16. list all the employees who are making less than the average salary
17. count the total numbers of the departments in departs table
18. sort the start_date in ascending order in job_history table
19. sort the start_date in descending order in job_history table
20. list all the employees whose first name starts with 'A'
21. list all the employees whose job_ID contains 'IT'
22. list all the employees whose department id in 50, 80, 100*/
select * from EMPLOYEES where SALARY<(select avg(SALARY) from EMPLOYEES) order by SALARY;
select count(*) from DEPARTMENTS;
select START_DATE from JOB_HISTORY order by START_DATE;
select * from EMPLOYEES where FIRST_NAME like 'A%';
select * from EMPLOYEES where JOB_ID like 'IT%';
select * from EMPLOYEES where DEPARTMENT_ID in (50,80,100);
