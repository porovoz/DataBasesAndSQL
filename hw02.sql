INSERT INTO employee (first_name, last_name, gender, age)
VALUES
    ('Elena', 'Nazarova', 'female', 25),
    ('Anna', 'Drozdova', 'female', 34),
    ('Alexey', 'Skvortcov', 'male', 51),
    ('Nikolay', 'Sinnikov', 'male', 31),
    ('Olga', 'Filippova', 'female', 45);

SELECT first_name AS Имя, last_name AS Фамилия FROM employee;

SELECT * FROM employee WHERE age < 30 OR age > 50;

SELECT * FROM employee WHERE age BETWEEN 30 AND 50;

SELECT * FROM employee ORDER BY last_name DESC;

SELECT * FROM employee WHERE first_name LIKE '_____%';

UPDATE employee SET first_name = 'Anna' WHERE id = 1;
UPDATE employee SET first_name = 'Alexey' WHERE id = 4;

SELECT first_name AS Имя, SUM(age) AS Суммарный_возраст FROM employee GROUP BY Имя;

SELECT first_name, MIN(age) FROM employee GROUP BY first_name;

SELECT first_name, MAX(age) FROM employee GROUP BY first_name HAVING COUNT(first_name) > 1 ORDER BY MAX(age);