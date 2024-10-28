-- Crear la tabla de vuelos
CREATE TABLE vuelos (
    id_vuelo NUMBER PRIMARY KEY,
    destino VARCHAR2(50)
);

-- Crear la tabla de asientos
CREATE TABLE asientos (
    id_asiento NUMBER PRIMARY KEY,
    id_vuelo NUMBER,
    estado VARCHAR2(10),
    CONSTRAINT fk_vuelo FOREIGN KEY (id_vuelo) REFERENCES vuelos(id_vuelo)
);

-- Insertar los registros iniciales en las tablas
INSERT INTO vuelos (id_vuelo, destino) VALUES (1, 'Bogotá - Medellín');
INSERT INTO asientos (id_asiento, id_vuelo, estado) VALUES (1, 1, 'libre');
INSERT INTO asientos (id_asiento, id_vuelo, estado) VALUES (2, 1, 'libre');

-- Confirmar los cambios
COMMIT;

GRANT SELECT, UPDATE ON asientos TO User1;
GRANT SELECT, UPDATE ON vuelos TO User1;

GRANT SELECT, UPDATE ON asientos TO User2;
GRANT SELECT, UPDATE ON vuelos TO User2;