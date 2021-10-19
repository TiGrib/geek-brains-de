/*ДЗ 5 ЧАСТЬ 2*/

DROP DATABASE IF EXISTS test_db; 
CREATE DATABASE test_db;

USE test_db;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  `name` VARCHAR(100) NOT NULL,
  birthday_at DATE NOT NULL
);

INSERT INTO users (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '1992-08-29');
  
/*ЗАДАНИЕ №1. СРЕДНИЙ ВОЗРАСТ*/
SELECT ROUND(AVG(timestampdiff(YEAR, users.birthday_at, NOW()))) FROM users;

/*ЗАДАНИЕ №2 воспользуемся встроенными функциями для вычисления. есть более простой варинат выполнения заменить год для каждого значения на текущий*/
SELECT DAYNAME(DATE_ADD(birthday_at, INTERVAL timestampdiff(year, birthday_at, NOW()) YEAR)) as day_name, count(birthday_at) as num_of_days  
FROM users GROUP BY day_name ORDER BY num_of_days ASC;