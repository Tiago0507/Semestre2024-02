--GRANT CREATE VIEW TO Profesor;
--SELECT username FROM dba_users WHERE username = 'PROFESOR';
CREATE USER Profesor IDENTIFIED BY Profe;
GRANT CREATE VIEW TO Profesor;
GRANT CONNECT, RESOURCE TO Profesor;



