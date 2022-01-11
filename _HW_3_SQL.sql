--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employees.employee_name, salary_1.monthly_salary from employee_salary
join employees on employee_id = employees.id
join salary_1 on salary_id = salary_1.id;

--2. Вывести всех работников у которых ЗП меньше 2000.
select employees.employee_name, salary_1.monthly_salary from employee_salary
join employees on employee_id = employees.id
join salary_1 on salary_id = salary_1.id
where salary_1.monthly_salary < 2000;

--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employees.employee_name, salary_1.monthly_salary from employee_salary
left outer join employees on employee_id = employees.id 
join salary_1 on salary_id = salary_1.id
where employees.employee_name is null ;

--4.  Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employees.employee_name, salary_1.monthly_salary from employee_salary
left outer join employees on employee_id = employees.id 
join salary_1 on salary_id = salary_1.id
where employees.employee_name is null and salary_1.monthly_salary < 2000;

--5. Найти всех работников кому не начислена ЗП
select employees.employee_name, salary_1.monthly_salary from employee_salary
right outer join employees on employee_id = employees.id 
left outer join salary_1 on salary_id = salary_1.id 
where salary_1.monthly_salary is null;


--6. Вывести всех работников с названиями их должности.