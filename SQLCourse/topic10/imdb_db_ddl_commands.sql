CREATE DATABASE imdb_db;

USE imdb_db;

/*
 * Опишем сущности:
 * Сделано:
 * - Фильмы или тв шоу. поля (id, name, release_date, type, description, genre, )
 * - Жанры
 * - Звезды (id, first_name, last_name, bio, date_of_birth, city_of_birth)
 * - Фильмы-Акетры (film_id, star_id)
 * - Медиа (id, film_id, stars_ids(JSON), media_type, media_path)
 * - Типы медиа (id, name, )
 * - Описание медиа
 * Осталось сделать:
 * - Фильмы-Режисеры (film_id, star_id)
 * - Фильмы-Оператор (film_id, star_id)
 * - Фильмы-Сценаристы (film_id, star_id)
 * - Фильмы-Продюсеры (film_id, star_id)
 * 
 */


CREATE TABLE genres (
	id SERIAL PRIMARY KEY COMMENT "",
	`name` VARCHAR(150) NOT NULL COMMENT "",
	created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
    updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
);


CREATE TABLE shows(
	id SERIAL PRIMARY KEY COMMENT "id фильма",
	title varchar(150) NOT NULL COMMENT "название фильма или тв шоу",
	show_type ENUM('film', 'tv show', 'tv series') DEFAULT NULL COMMENT "тип шоу",
	release_date datetime NOT NULL COMMENT "дата премьеры или старта",
	end_date datetime COMMENT "дата закртыия для тв шоу",
	genre_id BIGINT UNSIGNED NOT NULL COMMENT "жанр фильма",
	description TEXT COMMENT "Описание",
	created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
    updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
);


ALTER TABLE shows ADD CONSTRAINT shows_genres FOREIGN KEY (genre_id) REFERENCES genres(id);


CREATE TABLE stars(
	id SERIAL PRIMARY KEY COMMENT "id звезды",
	first_name VARCHAR(150) NOT NULL COMMENT "имя",
	last_name VARCHAR(150) NOT NULL COMMENT "фамилия",
	short_bio TEXT NOT NULL COMMENT "биография",
	birthday DATETIME NOT NULL COMMENT "день рождения",
	city_of_bith VARCHAR(150) NOT NULL COMMENT "город рождения", 
	created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
    updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"	
);



CREATE TABLE show_star_connection (
	show_id BIGINT UNSIGNED NOT NULL,
	star_id BIGINT UNSIGNED NOT NULL,
	PRIMARY KEY (show_id, star_id) COMMENT "составной ключ"
);

ALTER TABLE show_star_connection ADD CONSTRAINT show_star_show_id FOREIGN KEY (show_id) REFERENCES shows(id);
ALTER TABLE show_star_connection ADD CONSTRAINT show_star_star_id FOREIGN KEY (star_id) REFERENCES stars(id);


CREATE TABLE media_types (
  id SERIAL PRIMARY KEY COMMENT "Идентификатор строки",
  name varchar(255) NOT NULL COMMENT "Название типа",
  created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
);
  

CREATE TABLE media (
  id SERIAL PRIMARY KEY COMMENT "Идентификатор строки",
  filename varchar(255) NOT NULL COMMENT "Путь к файлу",
  `size` int NOT NULL COMMENT "Размер файла",
  created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки",
  media_type_id BIGINT UNSIGNED NOT NULL COMMENT "Ссылка на тип файла"
);


ALTER TABLE media ADD CONSTRAINT media_media_types FOREIGN KEY (media_type_id) REFERENCES media_types(id);


CREATE TABLE media_description (
	media_id BIGINT UNSIGNED COMMENT "id медиа к которому прикреплено описание",
	show_id BIGINT UNSIGNED COMMENT "id фильма",
	stars_ids JSON COMMENT "словарь актеров присутствующих на медиа",
	created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
    updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"	
);

ALTER TABLE media_description ADD CONSTRAINT media_desc_media_id FOREIGN KEY (media_id) REFERENCES media(id);
ALTER TABLE media_description ADD CONSTRAINT media_desc_show_id FOREIGN KEY (show_id) REFERENCES shows(id);


CREATE TABLE users (
  id SERIAL PRIMARY KEY COMMENT "Идентификатор строки",
  first_name varchar(100) NOT NULL COMMENT "Имя пользователя",
  last_name varchar(100) NOT NULL COMMENT "Фамилия пользователя",
  email varchar(100) NOT NULL COMMENT "Почта",
  nickname varchar(100) NOT NULL COMMENT "ник пользователя",
  is_user_professional TINYINT DEFAULT 0 COMMENT "пользователь проф. ревьювер или нет",
  created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
 );


CREATE TABLE reviews (
  id SERIAL PRIMARY KEY,
  user_id BIGINT UNSIGNED NOT NULL,
  show_id BIGINT UNSIGNED NOT NULL,
  head varchar(255) DEFAULT NULL,
  body text NOT NULL,
  created_at datetime DEFAULT CURRENT_TIMESTAMP,
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


ALTER TABLE reviews ADD CONSTRAINT reviews_user_id FOREIGN KEY (user_id) REFERENCES users(id);
ALTER TABLE reviews ADD CONSTRAINT reviews_show_id FOREIGN KEY (show_id) REFERENCES shows(id);


