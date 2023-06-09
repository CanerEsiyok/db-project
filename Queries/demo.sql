SELECT * FROM COUNTRIES;
select * from EMPLOYEES;
select * from DEPARTMENTS;
select FIRST_NAME from EMPLOYEES;
select CITY from LOCATIONS;
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES;
SELECT STREET_ADDRESS, POSTAL_CODE FROM LOCATIONS;
select distinct FIRST_NAME from EMPLOYEES;
select FIRST_NAME, LAST_NAME, PHONE_NUMBER from  EMPLOYEES where FIRST_NAME='David' and LAST_NAME='Lee';
select * from EMPLOYEES where SALARY>7000;
SELECT EMAIL, SALARY from EMPLOYEES where SALARY<4000;
SELECT * from EMPLOYEES where JOB_ID='IT_PROG' or JOB_ID='SA_REP';
SELECT FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES where SALARY>5000 and SALARY<10000;
SELECT FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES where SALARY between 5000 and 10000;
select * from EMPLOYEES where EMPLOYEE_ID between 130 and 170;
SELECT * from EMPLOYEES where EMPLOYEE_ID=135 or EMPLOYEE_ID=176 or EMPLOYEE_ID=154 or EMPLOYEE_ID=129;
SELECT * from EMPLOYEES where EMPLOYEE_ID in(135,176,154,129,150);
SELECT CITY from LOCATIONS where COUNTRY_ID in ('IT','US','UK');
SELECT count(*) from EMPLOYEES where JOB_ID in('IT_PROG','SA_REP');
SELECT count(*) from EMPLOYEES where SALARY >8000;
SELECT count(distinct FIRST_NAME) from EMPLOYEES;
select * from EMPLOYEES order by SALARY asc ;
select * from EMPLOYEES order by FIRST_NAME asc ;
select * from EMPLOYEES where FIRST_NAME like 'C%';
select * from EMPLOYEES where FIRST_NAME like 'C____';
select * from EMPLOYEES where FIRST_NAME like '__z__';
select * from  EMPLOYEES where FIRST_NAME like '_u%';
SELECT min(SALARY) from EMPLOYEES;
SELECT max(SALARY) from EMPLOYEES;
select ROUND(avg(SALARY),2) from EMPLOYEES;
select SUM(SALARY) FROM EMPLOYEES;
SELECT AVG(SALARY) FROM EMPLOYEES WHERE JOB_ID='IT_PROG';
select distinct JOB_ID from EMPLOYEES;
SELECT JOB_ID, avg(SALARY), count(*), sum(SALARY)  from EMPLOYEES group by JOB_ID;

