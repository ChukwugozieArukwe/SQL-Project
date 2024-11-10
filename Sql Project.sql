CREATE DATABASE data_new;
use data_new;
-- 1 Show all rows and columns in table.
Select * from salaries;

-- 2 Show employee name and Job title
select EmployeeName,JobTitle from salaries;

-- 3 Show Number of employees.
select count(*) from salaries;

-- 4 Show unique job titles
select distinct JobTitle from salaries;

-- 5 Show the job title and overtime pay for all employees with overtime pay greater than 50000
select JobTitle, OvertimePay from salaries
where OvertimePay > 50000;

-- 6 Show average base pay of all employees
select AVG(BasePay) as 'AVG BASEPAY' from salaries;

-- 7 Show top 10 highest paid employee
select EmployeeName, TotalPay from salaries
order by TotalPay desc
limit 10;

-- 8 Show the average of Basepay, OvertimePay and OtherPay of employee
select EmployeeName, (BasePay + OvertimePay + Otherpay)/3 as Averages from salaries;

-- 9 Show all employees who have the word "Manager" in their job title
select EmployeeName, JobTitle from salaries
where JobTitle LIKE '%Manager%';

-- 10 Show all employees with a job title not equal to 'Manager'
select EmployeeName, JobTitle from salaries
where JobTitle NOT Like '%Manager%'