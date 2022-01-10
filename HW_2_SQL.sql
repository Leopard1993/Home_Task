--1. Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null
create table employees (
	id serial primary key,
	emloyee_name varchar(50) not null
);
select * from employees;
alter table employees
rename column emloyee_name to employee_name;
--2. Наполнить таблицу employee 70 строками.
insert into employees(emloyee_name)
values  ('Bakurin_1'),
		('Bakurin_2'),
		('Bakurin_3'),
		('Bakurin_4'),
		('Bakurin_5'),
		('Bakurin_6'),
		('Bakurin_7'),
		('Bakurin_8'),
		('Bakurin_9'),
		('Bakurin_10'),
		('Bakurin_11'),
		('Bakurin_12'),
		('Bakurin_13'),
		('Bakurin_14'),
		('Bakurin_15'),
		('Bakurin_16'),
		('Bakurin_17'),
		('Bakurin_18'),
		('Bakurin_19'),
		('Bakurin_20'),
		('Bakurin_21'),
		('Bakurin_22'),
		('Bakurin_23'),
		('Bakurin_24'),
		('Bakurin_25'),
		('Bakurin_26'),
		('Bakurin_27'),
		('Bakurin_28'),
		('Bakurin_29'),
		('Bakurin_30'),
		('Bakurin_31'),
		('Bakurin_32'),
		('Bakurin_33'),
		('Bakurin_34'),
		('Bakurin_35'),
		('Bakurin_36'),
		('Bakurin_37'),
		('Bakurin_38'),
		('Bakurin_39'),
		('Bakurin_40'),
		('Bakurin_41'),
		('Bakurin_42'),
		('Bakurin_43'),
		('Bakurin_44'),
		('Bakurin_45'),
		('Bakurin_46'),
		('Bakurin_47'),
		('Bakurin_48'),
		('Bakurin_49'),
		('Bakurin_50'),
		('Bakurin_51'),
		('Bakurin_52'),
		('Bakurin_53'),
		('Bakurin_54'),
		('Bakurin_55'),
		('Bakurin_56'),
		('Bakurin_57'),
		('Bakurin_58'),
		('Bakurin_59'),
		('Bakurin_60'),
		('Bakurin_61'),
		('Bakurin_62'),
		('Bakurin_63'),
		('Bakurin_64'),
		('Bakurin_65'),
		('Bakurin_66'),
		('Bakurin_67'),
		('Bakurin_68'),
		('Bakurin_69'),
		('Bakurin_70');
--3. Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null
create table salary_1 (
	id serial primary key,
	monthly_salary int not null
);
--4. Наполнить таблицу salary 15 строками:
insert into salary_1(monthly_salary)
	values  (1100),
			(1100),
			(1200),
			(1300),
			(1400),
			(1500),
			(1600),
			(1700),
			(1800),
			(1900),
			(2000),
			(2100),
			(2200),
			(2300),
			(2400),
			(2500);
select * from salary_1;

--5.Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);
--	foreign key (employee_id)
--		references  employees(id),
--	foreign key (salary_id)
--		references salary_1(id)
 
select * from employee_salary;
--6. Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary(employee_id, salary_id)
values  (1,1),
		(2,2),
		(3,3),
		(4,4),
		(5,5),
		(6,6),
		(7,7),
		(8,8),
		(9,9),
		(10,10),
		(11,11),
		(12,12),
		(13,13),
		(14,14),
		(15,15),
		(16,16),
		(17,1),
		(18,2),
		(19,3),
		(20,3),
		(21,3),
		(22,4),
		(23,7),
		(24,6),
		(25,14),
		(26,11),
		(27,10),
		(28,12),
		(29,5),
		(30,8),
		(72,3),
		(73,3),
		(74,4),
		(75,7),
		(76,6),
		(77,14),
		(78,11),
		(79,10),
		(80,12),
		(71,5);
--7.Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
create table roles_1 (
	id serial primary key,
	role_name int not null unique
);
select * from roles_1;
--8. Поменять тип столба role_name с int на varchar(30)
alter table roles_1
alter column role_name type varchar(30) using role_name::varchar(30);
--9.Наполнить таблицу roles 20 строками:
insert into roles_1(role_name)
values  ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer');
insert into roles_1(role_name)
values  ('Senior Automation QA engineer');
--10.Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
		foreign key (employee_id)
			references employees(id),
		foreign key (role_id)
			references roles_1(id)
);
select * from roles_employee;
--11.Наполнить таблицу roles_employee 40 строками:
insert into roles_employee(employee_id, role_id)
values  (1,1),
		(2,2),
		(3,3),
		(4,4),
		(5,5),
		(6,6),
		(7,7),
		(8,8),
		(9,9),
		(10,10),
		(11,11),
		(12,12),
		(13,13),
		(14,14),
		(15,15),
		(16,16),
		(17,17),
		(18,18),
		(19,19),
		(20,20),
        (21,1),
		(22,2),
		(23,3),
		(24,4),
		(25,5),
		(26,6),
		(27,7),
		(28,8),
		(29,9),
		(30,10),
		(31,11),
		(32,12),
		(33,13),
		(34,14),
		(35,15),
		(36,16),
		(37,17),
		(38,18),
		(39,19),
		(40,20);
