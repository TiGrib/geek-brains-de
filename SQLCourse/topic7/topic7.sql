INSERT INTO shop.orders (user_id) VALUES 
(1), (1), (1), (2), (2), (6), (6), (4), (6), (6);

/*
 *Задание 1 и 2 
 */
SELECT DISTINCT(u.name) 
FROM users u 
RIGHT JOIN orders o ON (
	u.id = o.user_id
);

SELECT p.name, c.name
FROM products p 
INNER JOIN catalogs c ON(
	p.catalog_id = c.id 
);




