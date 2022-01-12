--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employees.employee_name, salary_1.monthly_salary from employee_salary
join employees on employee_id = employees.id 
join salary_1 on salary_id = salary_1.id; 

-- 2. Вывести всех работников у которых ЗП меньше 2000.
select employees.employee_name, salary_1.monthly_salary from employee_salary
join employees on employee_id = employees.id 
join salary_1 on salary_id = salary_1.id
where salary_1.monthly_salary < 2000;

--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employees.employee_name, salary_1.monthly_salary from employee_salary
left join employees on employee_id = employees.id 
join salary_1 on salary_id = salary_1.id; 

--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employees.employee_name, salary_1.monthly_salary from employee_salary
left join employees on employee_id = employees.id 
join salary_1 on salary_id = salary_1.id
where salary_1.monthly_salary < 2000 and employees.employee_name is null;

--5. Найти всех работников кому не начислена ЗП.
select employees.employee_name, salary_1.monthly_salary from employee_salary
join employees on employee_id = employees.id 
right join salary_1 on salary_id = salary_1.id
where salary_1.monthly_salary is null;
 
--6. Вывести всех работников с названиями их должности.
select employees.employee_name, roles_1.role_name from roles_employee
join employees on employee_id = employees.id 
join roles_1 on role_id = roles_1.id;

--7. Вывести имена и должность только Java разработчиков.
select employees.employee_name, roles_1.role_name from roles_employee
join employees on employee_id = employees.id 
join roles_1 on role_id = roles_1.id
where roles_1.role_name like '% Java %developer%';

--8. Вывести имена и должность только Python разработчиков.
select employees.employee_name, roles_1.role_name from roles_employee
join employees on employee_id = employees.id 
join roles_1 on role_id = roles_1.id
where roles_1.role_name like '%Python%developer%';

--9. Вывести имена и должность всех QA инженеров.
select employees.employee_name, roles_1.role_name from roles_employee
join employees on employee_id = employees.id 
join roles_1 on role_id = roles_1.id
where roles_1.role_name like '%QA%';

--10. Вывести имена и должность ручных QA инженеров.
select employees.employee_name, roles_1.role_name from roles_employee
join employees on employee_id = employees.id 
join roles_1 on role_id = roles_1.id
where roles_1.role_name like '%Manual%QA%';

--11. Вывести имена и должность автоматизаторов QA
select employees.employee_name, roles_1.role_name from roles_employee
join employees on employee_id = employees.id 
join roles_1 on role_id = roles_1.id
where roles_1.role_name like '%Aut%QA%';

--12. Вывести имена и зарплаты Junior специалистов
select employees.employee_name, salary_1.monthly_salary from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join employees on roles_employee.employee_id = employees.id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '%Junior%';

--13. Вывести имена и зарплаты Middle специалистов
select employees.employee_name, salary_1.monthly_salary from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join employees on roles_employee.employee_id = employees.id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '%Middle%';

--14. Вывести имена и зарплаты Senior специалистов
select employees.employee_name, salary_1.monthly_salary from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join employees on roles_employee.employee_id = employees.id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '%Senior%';

--15. Вывести зарплаты Java разработчиков
select salary_1.monthly_salary from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '% Java %developer%';

--16. Вывести зарплаты Python разработчиков
select salary_1.monthly_salary from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '% Python %developer%';

--17. Вывести имена и зарплаты Junior Python разработчиков
select salary_1.monthly_salary from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like 'Junior Python developer';

--18. Вывести имена и зарплаты Middle JS разработчиков
select employees.employee_name, salary_1.monthly_salary from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join employees on roles_employee.employee_id = employees.id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '%Mid%J%t%dev%';

--19. Вывести имена и зарплаты Senior Java разработчиков
select employees.employee_name, salary_1.monthly_salary from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join employees on roles_employee.employee_id = employees.id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '%Sen% Java %dev%';

--20. Вывести зарплаты Junior QA инженеров
select employees.employee_name, salary_1.monthly_salary from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join employees on roles_employee.employee_id = employees.id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '%Ju%QA%';

--21. Вывести среднюю зарплату всех Junior специалистов
select avg(salary_1.monthly_salary) from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '%Junior%';

--22. Вывести сумму зарплат JS разработчиков
select sum(salary_1.monthly_salary) from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '%J%t%dev%';

--23. Вывести минимальную ЗП QA инженеров
select min(salary_1.monthly_salary) from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '%QA%';

--24. Вывести максимальную ЗП QA инженеров
select max(salary_1.monthly_salary) from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '%QA%';

--25. Вывести количество QA инженеров
select count(roles_1.role_name) from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '%QA%engineer%';

--26. Вывести количество Middle специалистов.
select count(roles_1.role_name) from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '%Middle%';

--27. Вывести количество разработчиков
select count(roles_1.role_name) from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '%developer%';

--28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(salary_1.monthly_salary) from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '%developer%';

--29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employees.employee_name,roles_1.role_name, salary_1.monthly_salary from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join employees on roles_employee.employee_id = employees.id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
order by salary_1.monthly_salary;

--30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employees.employee_name,roles_1.role_name, salary_1.monthly_salary from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join employees on roles_employee.employee_id = employees.id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where salary_1.monthly_salary >=1700 and salary_1.monthly_salary <=2300
order by salary_1.monthly_salary;

--31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employees.employee_name,roles_1.role_name, salary_1.monthly_salary from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join employees on roles_employee.employee_id = employees.id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where salary_1.monthly_salary <2300
order by salary_1.monthly_salary;

--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employees.employee_name,roles_1.role_name, salary_1.monthly_salary from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join employees on roles_employee.employee_id = employees.id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where salary_1.monthly_salary = 1100 or salary_1.monthly_salary = 1500 or salary_1.monthly_salary = 2000
order by salary_1.monthly_salary;
