--Estrategia A
--SELECT saldo FROM Cuentas WHERE codigo = 1;
--UPDATE C##Banco_B.Cuentas SET saldo = saldo + 50000 WHERE codigo = 2;
--UPDATE Cuentas SET saldo = saldo - 50000 WHERE codigo = 1;
--COMMIT;

SELECT * FROM Cuentas;

--DELETE FROM Cuentas;
--INSERT INTO Cuentas (codigo, saldo) VALUES (1, 100000);
--INSERT INTO Cuentas (codigo, saldo) VALUES (2, 150000);
--COMMIT;

--Estrategia B
--SELECT saldo FROM Cuentas WHERE codigo = 1;
--UPDATE Cuentas SET saldo = saldo - 50000 WHERE codigo = 1;
--UPDATE C##Banco_B.Cuentas SET saldo = saldo + 50000 WHERE codigo = 2;
--COMMIT;

-- Caso 2
--SELECT saldo FROM Cuentas WHERE codigo = 1;
--UPDATE C##Banco_B.Cuentas SET saldo = saldo + 50000 WHERE codigo = 2;
--COMMIT;
--UPDATE Cuentas SET saldo = saldo - 50000 WHERE codigo = 1;
--COMMIT;

SELECT * FROM Cuentas;

-- Caso 3

-- Estrategia A
-- Banco_A: Consultar saldo de la cuenta origen
SELECT saldo FROM Cuentas WHERE codigo = 1;

-- Banco_A: Sumar 50.000 a la cuenta destino en Banco_B
UPDATE C##Banco_B.Cuentas SET saldo = saldo + 50000 WHERE codigo = 2;

-- Banco_A: Restar 50.000 de la cuenta origen en Banco_A
UPDATE Cuentas SET saldo = saldo - 50000 WHERE codigo = 1;
COMMIT;  -- `Ti` se compromete

-- Banco_A: Verificar saldo final en Banco_A
SELECT * FROM Cuentas;









