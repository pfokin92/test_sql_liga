#������� ������ �����������, ���������� ���������� ����� ������� ��� � ����������������� ������������
select employees.id,
employees.department_id,
employees.name as employees_name,  
employees.salary as employees_salary ,
employees.chief_id, 
chieves.name as chief_name, 
chieves.salary as chief_salary
FROM liga.employee as employees
join liga.employee as chieves
on employees.chief_id=chieves.id
where employees.salary > chieves.salary

#������� ������ �����������, ���������� ������������ ���������� ����� � ����� ������
select
employees.id, employees.name, max(employees.salary) as salary
FROM liga.employee as employees
group by employees.department_id

#������� ������ ID �������, ���������� ����������� � ������� �� ��������� 3 �������
SELECT department_id 
FROM liga.employee
GROUP BY department_id
HAVING COUNT(*) <= 3

#������� ������ ID �������, � ������� ��� �����������
SELECT department.id
FROM liga.department as department
left join liga.employee as employees
on  department.id=employees.department_id
GROUP BY department.id
having  count(employees.department_id)=0




