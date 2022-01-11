--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employees.employee_name, salary_1.monthly_salary from employee_salary
join employees on employee_id = employees.id
join salary_1 on salary_id = salary_1.id;

--2. ������� ���� ���������� � ������� �� ������ 2000.
select employees.employee_name, salary_1.monthly_salary from employee_salary
join employees on employee_id = employees.id
join salary_1 on salary_id = salary_1.id
where salary_1.monthly_salary < 2000;

--3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employees.employee_name, salary_1.monthly_salary from employee_salary
left outer join employees on employee_id = employees.id 
join salary_1 on salary_id = salary_1.id
where employees.employee_name is null ;

--4.  ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employees.employee_name, salary_1.monthly_salary from employee_salary
left outer join employees on employee_id = employees.id 
join salary_1 on salary_id = salary_1.id
where employees.employee_name is null and salary_1.monthly_salary < 2000;

--5. ����� ���� ���������� ���� �� ��������� ��
select employees.employee_name, salary_1.monthly_salary from employee_salary
right outer join employees on employee_id = employees.id 
left outer join salary_1 on salary_id = salary_1.id 
where salary_1.monthly_salary is null;


--6. ������� ���� ���������� � ���������� �� ���������.