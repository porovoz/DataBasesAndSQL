CREATE TABLE city (
    city_id BIGSERIAL NOT NULL PRIMARY KEY,
    city_name VARCHAR(60)
);

ALTER TABLE employee ADD COLUMN city_id INT;

ALTER TABLE employee ADD FOREIGN KEY(city_id) REFERENCES city(city_id);

INSERT INTO city(city_name) VALUES
    ('St.-Petersburg'),
    ('Moscow'),
    ('Saratov'),
    ('Novosibirsk');

UPDATE employee SET city_id = v.city_id
FROM (VALUES (1, 2), (2, 1), (3, 4), (4, 3)) v(id, city_id)
WHERE v.id = employee.id;

SELECT first_name, last_name, city_name
FROM employee
     INNER JOIN city
         ON employee.city_id=city.city_id;

SELECT city_name, first_name, last_name
FROM city
     RIGHT JOIN employee
         ON city.city_id=employee.city_id;

SELECT first_name, city_name
FROM employee
    FULL JOIN city
        ON employee.city_id=city.city_id;

SELECT first_name, city_name
FROM employee
    CROSS JOIN city;