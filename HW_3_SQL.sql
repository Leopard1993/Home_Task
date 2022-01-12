--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employees.employee_name, salary_1.monthly_salary from employee_salary
join employees on employee_id = employees.id 
join salary_1 on salary_id = salary_1.id; 

-- 2. ������� ���� ���������� � ������� �� ������ 2000.
select employees.employee_name, salary_1.monthly_salary from employee_salary
join employees on employee_id = employees.id 
join salary_1 on salary_id = salary_1.id
where salary_1.monthly_salary < 2000;

--3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employees.employee_name, salary_1.monthly_salary from employee_salary
left join employees on employee_id = employees.id 
join salary_1 on salary_id = salary_1.id; 

--4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employees.employee_name, salary_1.monthly_salary from employee_salary
left join employees on employee_id = employees.id 
join salary_1 on salary_id = salary_1.id
where salary_1.monthly_salary < 2000 and employees.employee_name is null;

--5. ����� ���� ���������� ���� �� ��������� ��.
select employees.employee_name, salary_1.monthly_salary from employee_salary
join employees on employee_id = employees.id 
right join salary_1 on salary_id = salary_1.id
where salary_1.monthly_salary is null;
 
--6. ������� ���� ���������� � ���������� �� ���������.
select employees.employee_name, roles_1.role_name from roles_employee
join employees on employee_id = employees.id 
join roles_1 on role_id = roles_1.id;

--7. ������� ����� � ��������� ������ Java �������������.
select employees.employee_name, roles_1.role_name from roles_employee
join employees on employee_id = employees.id 
join roles_1 on role_id = roles_1.id
where roles_1.role_name like '% Java %developer%';

--8. ������� ����� � ��������� ������ Python �������������.
select employees.employee_name, roles_1.role_name from roles_employee
join employees on employee_id = employees.id 
join roles_1 on role_id = roles_1.id
where roles_1.role_name like '%Python%developer%';

--9. ������� ����� � ��������� ���� QA ���������.
select employees.employee_name, roles_1.role_name from roles_employee
join employees on employee_id = employees.id 
join roles_1 on role_id = roles_1.id
where roles_1.role_name like '%QA%';

--10. ������� ����� � ��������� ������ QA ���������.
select employees.employee_name, roles_1.role_name from roles_employee
join employees on employee_id = employees.id 
join roles_1 on role_id = roles_1.id
where roles_1.role_name like '%Manual%QA%';

--11. ������� ����� � ��������� ��������������� QA
select employees.employee_name, roles_1.role_name from roles_employee
join employees on employee_id = employees.id 
join roles_1 on role_id = roles_1.id
where roles_1.role_name like '%Aut%QA%';

--12. ������� ����� � �������� Junior ������������
select employees.employee_name, salary_1.monthly_salary from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join employees on roles_employee.employee_id = employees.id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '%Junior%';

--13. ������� ����� � �������� Middle ������������
select employees.employee_name, salary_1.monthly_salary from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join employees on roles_employee.employee_id = employees.id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '%Middle%';

--14. ������� ����� � �������� Senior ������������
select employees.employee_name, salary_1.monthly_salary from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join employees on roles_employee.employee_id = employees.id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '%Senior%';

--15. ������� �������� Java �������������
select salary_1.monthly_salary from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '% Java %developer%';

--16. ������� �������� Python �������������
select salary_1.monthly_salary from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '% Python %developer%';

--17. ������� ����� � �������� Junior Python �������������
select salary_1.monthly_salary from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like 'Junior Python developer';

--18. ������� ����� � �������� Middle JS �������������
select employees.employee_name, salary_1.monthly_salary from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join employees on roles_employee.employee_id = employees.id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '%Mid%J%t%dev%';

--19. ������� ����� � �������� Senior Java �������������
select employees.employee_name, salary_1.monthly_salary from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join employees on roles_employee.employee_id = employees.id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '%Sen% Java %dev%';

--20. ������� �������� Junior QA ���������
select employees.employee_name, salary_1.monthly_salary from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join employees on roles_employee.employee_id = employees.id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '%Ju%QA%';

--21. ������� ������� �������� ���� Junior ������������
select avg(salary_1.monthly_salary) from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '%Junior%';

--22. ������� ����� ������� JS �������������
select sum(salary_1.monthly_salary) from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '%J%t%dev%';

--23. ������� ����������� �� QA ���������
select min(salary_1.monthly_salary) from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '%QA%';

--24. ������� ������������ �� QA ���������
select max(salary_1.monthly_salary) from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '%QA%';

--25. ������� ���������� QA ���������
select count(roles_1.role_name) from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '%QA%engineer%';

--26. ������� ���������� Middle ������������.
select count(roles_1.role_name) from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '%Middle%';

--27. ������� ���������� �������������
select count(roles_1.role_name) from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '%developer%';

--28. ������� ���� (�����) �������� �������������.
select sum(salary_1.monthly_salary) from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where roles_1.role_name like '%developer%';

--29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employees.employee_name,roles_1.role_name, salary_1.monthly_salary from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join employees on roles_employee.employee_id = employees.id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
order by salary_1.monthly_salary;

--30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employees.employee_name,roles_1.role_name, salary_1.monthly_salary from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join employees on roles_employee.employee_id = employees.id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where salary_1.monthly_salary >=1700 and salary_1.monthly_salary <=2300
order by salary_1.monthly_salary;

--31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employees.employee_name,roles_1.role_name, salary_1.monthly_salary from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join employees on roles_employee.employee_id = employees.id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where salary_1.monthly_salary <2300
order by salary_1.monthly_salary;

--32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employees.employee_name,roles_1.role_name, salary_1.monthly_salary from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join employees on roles_employee.employee_id = employees.id 
join roles_1 on roles_employee.role_id = roles_1.id 
join salary_1 on employee_salary.salary_id = salary_1.id
where salary_1.monthly_salary = 1100 or salary_1.monthly_salary = 1500 or salary_1.monthly_salary = 2000
order by salary_1.monthly_salary;
