SELECT * FROM Cuentas;

--COMMIT;

--DELETE FROM Cuentas;
--INSERT INTO Cuentas (codigo, saldo) VALUES (1, 100000);
--INSERT INTO Cuentas (codigo, saldo) VALUES (2, 150000);
--COMMIT;

-- Caso 2

--SELECT * FROM Cuentas;
--SELECT saldo FROM Cuentas WHERE codigo = 2;
--UPDATE Cuentas SET saldo = saldo - 70000 WHERE codigo = 2;
--COMMIT;

SELECT * FROM Cuentas;

-- Caso 3

-- Estrategia A
-- Banco_B: Retirar 60.000 de la cuenta origen
UPDATE Cuentas SET saldo = saldo - 60000 WHERE codigo = 1;
COMMIT;  -- `Tj` se compromete inmediatamente

-- Banco_B: Verificar saldo final en Banco_B
SELECT * FROM Cuentas;






