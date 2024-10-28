create table Employees_temp (
    Employee_id number
);

begin
    for i in 0..2999999 loop
        insert into Employees_temp (Employee_id)
        values (2 + i * 5);
    end loop;
end;

SELECT e.first_name
FROM employees e
WHERE e.employee_id IN (
    SELECT et.employee_id
    FROM employees_temp et
);


