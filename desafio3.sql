psql
CREATE DATABASE desafiotrespuntouno
\c desafiotrespuntouno
CREATE TABLE trabajadores (
    rut VARCHAR (10),
    nombre VARCHAR (50),
    direccion VARCHAR (50),
    PRIMARY KEY (rut)
)

CREATE TABLE liquidaciones (
    id VARCHAR (6),
    deposito INT,
    rut_trabajador,
    FOREIGN KEY (rut_trabajador) REFERENCES trabajadores (rut)
)

CREATE TABLE departamentos(
    nombre VARCHAR(12),
    rut_trabajador VARCHAR(10)
    FOREIGN KEY (rut_trabajador) REFERENCES trabajadores (rut)
)

EXIT

psql

CREATE DATABASE desafiotrespuntodos
\c desafriotrespuntodos

CREATE TABLE alumnos(
    rut VARCHAR (10),
    nombre VARCHAR (25),
    PRIMARY KEY rut
)

CREATE TABLE cursos(
    nombre_curso VARCHAR (25),
    rut_alumno VARCHAR (10),
    FOREIGN KEY rut_alumno REFERENCES alumnos (rut)
)

CREATE TABLE pruebas(
    id VARCHAR (10),
    rut_alumnos VARCHAR (10),
    PRIMARY KEY id,
    FOREIGN KEY rut_alumno REFERENCES alumnos (rut)
)

CREATE TABLE profesor(
    id VARCHAR (10),
    rut_alumno_prueba VARCHAR (25),
    FOREIGN KEY rut_alumno_prueba REFERENCES pruebas(rut_alumno)
)
