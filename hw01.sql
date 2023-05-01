CREATE DATABASE skypro;
\c skypro

CREATE TABLE employee (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(6) NOT NULL,
    age INT NOT NULL
);

INSERT INTO employee (
    first_name, last_name, gender, age)
VALUES (‘Sergey’, ‘Klimov’, ‘male’, 45);
INSERT INTO employee (
    first_name, last_name, gender, age)
VALUES('Elena', 'Nazarova', 'female', 25);
INSERT INTO employee (
    first_name, last_name, gender, age)
VALUES('Anna', 'Drozdova', 'female', 34);

SELECT * FROM employee;

UPDATE employee SET (first_name, last_name, gender, age) = ('Ekaterina', 'Pavlova', 'female', 30) WHERE id = 1;

SELECT * FROM employee;

DELETE FROM employee WHERE id = 3;

SELECT * FROM employee;