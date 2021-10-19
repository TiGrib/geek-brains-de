/*ДЗ 5*/

CREATE DATABASE shop;

USE shop;

/*ЗАДАНИЕ №1*/

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  first_name VARCHAR(100) NOT NULL COMMENT "Имя пользователя",
  last_name VARCHAR(100) NOT NULL COMMENT "Фамилия пользователя",
  email VARCHAR(100) NOT NULL UNIQUE COMMENT "Почта",
  phone CHAR(11) NOT NULL UNIQUE COMMENT "Телефон",
  created_at DATETIME COMMENT "Время создания строки",  
  updated_at DATETIME COMMENT "Время обновления строки"
) COMMENT "Пользователи"; 

INSERT INTO `users` (`first_name`, `last_name`, `email`, `phone`) 
VALUES ('Pearl', 'Cartwright', 'dayna89@example.com', '870-784-613' );
INSERT INTO `users` ( `first_name`, `last_name`, `email`, `phone`)
VALUES ('Zakary', 'Parisian', 'ucasper@example.org', '(723)203-94');
INSERT INTO `users` ( `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`)
VALUES ('Alanis', 'Stroman', 'robel.talia@example.net', '1-076-227-0', '1983-04-21 12:50:24', '2000-05-10 21:44:52');
 
 
 SELECT * FROM users;
 
 
/*С помощью оператора update и функции current_timestamp() обновим поля для которых created_at и updated_at null*/
 UPDATE users
 SET created_at=current_timestamp()
 WHERE created_at IS NULL;
 UPDATE users
 SET updated_at=current_timestamp()
 WHERE updated_at IS NULL;

SELECT * FROM users;
/*Как видно, данные для первых двух записей обновились на текущее время*/

/*ЗАДАНИЕ №2*/
/*Создадим новую таблицу users с типом данных varchar(20) для полей created_at и updated_at, а также заполним их данными*/
DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  first_name VARCHAR(100) NOT NULL COMMENT "Имя пользователя",
  last_name VARCHAR(100) NOT NULL COMMENT "Фамилия пользователя",
  email VARCHAR(100) NOT NULL UNIQUE COMMENT "Почта",
  phone CHAR(11) NOT NULL UNIQUE COMMENT "Телефон",
  created_at VARCHAR(20) COMMENT "Время создания строки",  
  updated_at VARCHAR(20) COMMENT "Время обновления строки"
) COMMENT "Пользователи"; 

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`)
VALUES (1, 'Pearl', 'Cartwright', 'dayna89@example.com', '870-784-613', '2008.06.17 01:17', '2008.06.17 01:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`)
VALUES (2, 'Zakary', 'Parisian', 'ucasper@example.org', '(723)203-94', '1990.03.28 06:39', '1990.03.28 06:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`)
VALUES (3, 'Alanis', 'Stroman', 'robel.talia@example.net', '1-076-227-0', '2000.05.10 21:44', '2000.05.10 21:44');


ALTER TABLE users
MODIFY COLUMN created_at DATETIME;

DESCRIBE users;
SELECT * FROM users;
/* Как видно тип данных для колоннки created_at изменился на datetime, при этом сами данные не пропали. Потворим тоже самое для колоник updated_at*/

ALTER TABLE users
MODIFY COLUMN updated_at DATETIME;

/*ЗАДАНИЕ №3*/
CREATE TABLE storehouses_products (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `value` INT NOT NULL
) COMMENT "Таблица товаров";


INSERT INTO storehouses_products (`value`)
VALUES 
	(0),
    (2500),
    (0),
    (30),
    (500),
    (1);
    
/*Вывод данных с сортировкой по возрастанию, 0 в конце*/
SELECT `value` FROM storehouses_products ORDER BY CASE WHEN `value` = 0 THEN 0 ELSE 1 END DESC, `value` ASC;


    
    
    
    