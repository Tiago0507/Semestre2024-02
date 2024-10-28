SELECT estado FROM Reservas.asientos WHERE id_asiento = 1;

UPDATE Reservas.asientos SET estado = 'reservado' WHERE id_asiento = 2;

COMMIT;

SELECT * FROM Reservas.asientos;
