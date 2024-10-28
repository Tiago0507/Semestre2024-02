-- Insertando registros en la tabla TipoDeNota (de uno en uno)
INSERT INTO TipoDeNota (descripcion) VALUES ('Examen Parcial');
INSERT INTO TipoDeNota (descripcion) VALUES ('Tarea');
INSERT INTO TipoDeNota (descripcion) VALUES ('Examen Final');
INSERT INTO TipoDeNota (descripcion) VALUES ('Proyecto');
INSERT INTO TipoDeNota (descripcion) VALUES ('Participación');

-- Insertando registros en la tabla Estudiante (de uno en uno)
INSERT INTO Estudiante (codigo, nombre, usuario) VALUES (101, 'Juan Pérez', 'juanperez');
INSERT INTO Estudiante (codigo, nombre, usuario) VALUES (102, 'María Gómez', 'mariagomez');

-- Insertando registros en la tabla Notas para el primer estudiante (Juan Pérez)
INSERT INTO Notas (codigo_tipo_nota, codigo_estudiante, id_nota, nota) VALUES (1, 101, 1, 4.5); -- Examen Parcial
INSERT INTO Notas (codigo_tipo_nota, codigo_estudiante, id_nota, nota) VALUES (2, 101, 2, 3.8); -- Tarea
INSERT INTO Notas (codigo_tipo_nota, codigo_estudiante, id_nota, nota) VALUES (3, 101, 3, 4.2); -- Examen Final
INSERT INTO Notas (codigo_tipo_nota, codigo_estudiante, id_nota, nota) VALUES (4, 101, 4, 4.0); -- Proyecto
INSERT INTO Notas (codigo_tipo_nota, codigo_estudiante, id_nota, nota) VALUES (5, 101, 5, 4.3); -- Participación

-- Insertando registros en la tabla Notas para el segundo estudiante (María Gómez)
INSERT INTO Notas (codigo_tipo_nota, codigo_estudiante, id_nota, nota) VALUES (1, 102, 6, 3.9); -- Examen Parcial
INSERT INTO Notas (codigo_tipo_nota, codigo_estudiante, id_nota, nota) VALUES (2, 102, 7, 4.1); -- Tarea
INSERT INTO Notas (codigo_tipo_nota, codigo_estudiante, id_nota, nota) VALUES (3, 102, 8, 4.0); -- Examen Final
INSERT INTO Notas (codigo_tipo_nota, codigo_estudiante, id_nota, nota) VALUES (4, 102, 9, 4.4); -- Proyecto
INSERT INTO Notas (codigo_tipo_nota, codigo_estudiante, id_nota, nota) VALUES (5, 102, 10, 4.7); -- Participación
