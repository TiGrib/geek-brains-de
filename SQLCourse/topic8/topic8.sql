USE vk_20210919;

/*
 * Задание 1.
 * Нам не важно друзья ли пользователи или нет.
 * Заданным пользователем будет user 1.
 */

 -- Заполним таблицу с сообщениями данными

UPDATE messages SET from_user_id = 2, to_user_id = 1 WHERE id < 10;
UPDATE messages SET from_user_id = 3, to_user_id = 1 WHERE id >= 10 AND id < 30;
UPDATE messages SET from_user_id = 5, to_user_id = 1 WHERE id >= 30 AND id < 55;


SELECT CONCAT_WS(' ',  u.first_name, u.last_name) AS full_name, COUNT(1) AS num_msg FROM messages m 
INNER JOIN users u ON (
	m.from_user_id = u.id 
)
WHERE m.to_user_id = 1 GROUP BY m.from_user_id ORDER BY num_msg DESC;

/*
 * Задание 2
 *  
 */

SELECT * FROM target_types tt;

SELECT COUNT(1) FROM profiles p 
INNER JOIN likes l ON (
	p.user_id = l.target_id 
	AND l.target_type_id = 1
)
WHERE (YEAR(NOW()) - YEAR(p.birthday)) < 10;


/*
 * Задание 3
 */

SELECT COUNT(1), u.gender FROM likes l
INNER JOIN users u ON (
	l.user_id  = u.id 
)
GROUP BY u.gender LIMIT 1;
