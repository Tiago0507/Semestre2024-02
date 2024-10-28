SELECT * FROM Reservas.asientos;

UPDATE Reservas.asientos SET estado = 'reservado' WHERE id_asiento = 1;

COMMIT;

SELECT estado FROM Reservas.asientos WHERE id_asiento = 1;


