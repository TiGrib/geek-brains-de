CREATE DATABASE vk;
USE vk;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  first_name VARCHAR(100) NOT NULL COMMENT "Имя пользователя",
  last_name VARCHAR(100) NOT NULL COMMENT "Фамилия пользователя",
  email VARCHAR(100) NOT NULL UNIQUE COMMENT "Почта",
  phone CHAR(11) NOT NULL UNIQUE COMMENT "Телефон",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Пользователи"; 

SHOW TABLES;
DESCRIBE users;


DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",  
  gender ENUM('M', 'F', '?') NOT NULL COMMENT "Пол",
  birthday DATE COMMENT "Дата рождения",
  photo_id INT UNSIGNED COMMENT "Ссылка на основную фотографию пользователя",
  `status` ENUM('online', 'offline', 'disabled') COMMENT "Текущий статус",
  city VARCHAR(130) COMMENT "Город проживания",
  country VARCHAR(130) COMMENT "Страна проживания",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Профили"; 

DESCRIBE profiles;

ALTER TABLE profiles ADD CONSTRAINT profiles_user_id FOREIGN KEY (user_id) REFERENCES users(id);
ALTER TABLE profiles ADD CONSTRAINT profiles_photo_id FOREIGN KEY (photo_id) REFERENCES media(id); -- Выполнение после создания таблиц media и media_types

CREATE TABLE media (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
	filename VARCHAR(255) NOT NULL UNIQUE COMMENT "Путь к файлу",
    media_type_id INT UNSIGNED NOT NULL COMMENT "Ссылка на тип файла",
    size INT NOT NULL COMMENT "Размер файла",
    created_at DATETIME DEFAULT NOW() COMMENT "Время создания строки",
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Медиафайлы";

CREATE TABLE media_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки",
  name VARCHAR(255) NOT NULL UNIQUE COMMENT "Название типа",
  metadata JSON COMMENT "мета данные о файле",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Типы медиафайлов";

ALTER TABLE media ADD CONSTRAINT media_media_type_id FOREIGN KEY (media_type_id) REFERENCES media_types(id);

CREATE TABLE friendship (
	user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя", 
	friend_id INT UNSIGNED NOT NULL COMMENT "Ссылка на друга пользователя", 
    request_type_id INT UNSIGNED NOT NULL COMMENT "Ссылка на тип запроса",
	requested_at DATETIME DEFAULT NOW() COMMENT "Время отправления приглашения дружить",
	confirmed_at DATETIME COMMENT "Время подтверждения приглашения",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки",
    PRIMARY KEY (user_id, friend_id)
);

ALTER TABLE friendship ADD CONSTRAINT friendship_user_id FOREIGN KEY (user_id) REFERENCES users(id);
ALTER TABLE friendship ADD CONSTRAINT friendship_friend_id FOREIGN KEY (friend_id) REFERENCES users(id);

CREATE TABLE friendship_request_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  name VARCHAR(150) NOT NULL UNIQUE COMMENT "Название статуса",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"  
) COMMENT "Типы запроса на дружбы";

ALTER TABLE friendship ADD CONSTRAINT friendship_request_type_id FOREIGN KEY (request_type_id) REFERENCES friendship_request_types(id); 

CREATE TABLE communities (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор сроки",
  name VARCHAR(150) NOT NULL UNIQUE COMMENT "Название группы",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"  
) COMMENT "Группы";

CREATE TABLE communities_users (
  community_id INT UNSIGNED NOT NULL COMMENT "Ссылка на группу",
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки", 
  PRIMARY KEY (community_id, user_id) COMMENT "Составной первичный ключ"
) COMMENT "Участники групп, связь между пользователями и группами";

ALTER TABLE communities_users ADD CONSTRAINT communities_users_user_id FOREIGN KEY (user_id) REFERENCES users(id);
ALTER TABLE communities_users ADD CONSTRAINT communities_users_community_id_id FOREIGN KEY (community_id) REFERENCES communities(id);

/*
Так-как посты могут быть созданы и пользователями и сообществами, то есть несколько вариантов архитектуры:
- одна таблица с разными атрибутами user_id и community_id
- одна таблица с атрибутами object_id и object_type(категориальный атрибут enum('community', 'user'), или через доп таблицу)
- две таблицы для юзеров и для сообществ
можно добавить атрибут attached-files.
*/
CREATE TABLE community_posts (
	id INT UNSIGNED NOT NULL COMMENT "Индетификатор поста",
    community_id INT UNSIGNED NOT NULL COMMENT "Ссылка на сообщество",
    title VARCHAR(255) COMMENT "Название поста",
    post_text TINYTEXT COMMENT "Текст поста",    
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки", 
    PRIMARY KEY (community_id, id) COMMENT "Составной первичный ключ"
) COMMENT "Посты пользователя";

ALTER TABLE community_posts ADD CONSTRAINT community_posts_community_id FOREIGN KEY (community_id) REFERENCES communities(id);

CREATE TABLE user_posts(
	id INT UNSIGNED NOT NULL COMMENT "Индетификатор поста",
    user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
    title VARCHAR(255) COMMENT "Название поста",
    post_text TINYTEXT COMMENT "Текст поста",    
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки", 
    PRIMARY KEY (user_id, id) COMMENT "Составной первичный ключ"
) COMMENT "Посты пользователя";

ALTER TABLE user_posts ADD CONSTRAINT user_posts_user_id  FOREIGN KEY (user_id) REFERENCES users(id);

/*
Рассуждения касательно постов для разых сущностей верны и для лайков, поэтому решил сделать три таблицы
Опишем таблицу хранящую лайки 
- указатель на объект (user_id, media_id, post_id)
- список тех кто лайкнул формат данных JSON учитывая временную сложность на операции {"id": "user_id"}
*/
CREATE TABLE user_likes(
    user_id INT UNSIGNED PRIMARY KEY NOT NULL  COMMENT "id объекта которому поставили лайк",
    likes_dict JSON COMMENT "'список' юзеров"
) COMMENT "Список лайков";

CREATE TABLE user_post_likes(
    post_id INT UNSIGNED PRIMARY KEY NOT NULL  COMMENT "id объекта которому поставили лайк",
    likes_dict JSON COMMENT "'список' юзеров"
) COMMENT "Список лайков";

CREATE TABLE community_post_likes(
    post_id INT UNSIGNED PRIMARY KEY NOT NULL  COMMENT "id объекта которому поставили лайк",
    likes_dict JSON COMMENT "'список' юзеров"
) COMMENT "Список лайков";

CREATE TABLE media_likes(
    media_id INT UNSIGNED PRIMARY KEY NOT NULL  COMMENT "id объекта которому поставили лайк",
    likes_dict JSON COMMENT "'список' юзеров"
) COMMENT "Список лайков";
