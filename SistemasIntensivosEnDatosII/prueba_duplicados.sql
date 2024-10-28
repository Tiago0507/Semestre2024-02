create table prueba (
id number,
nombre varchar2(100)
);

begin
for i in 1..10000000 loop
    insert into prueba values (i, 'NOMBRE'||TO_CHAR(i));
end loop;
end;

begin
for i in 1..5000000 loop
    insert into prueba values (i, 'NOMBRE'||TO_CHAR(i));
end loop;
end;

// drop table prueba;

select tablespace_name, encrypted from dba_tablespaces;

select min employee_id from employees;








