use new_vk;

/*Скрипт для обновления типов медиа и запросов на дружбу на более осмысленные*/


select * from media_types;

UPDATE media_types SET name='photo' WHERE id=1;
UPDATE media_types SET name='audio' WHERE id=2;
UPDATE media_types SET name='video' WHERE id=3;

select * from friendship_request_types;

UPDATE friendship_request_types SET name='friends' WHERE id=1;
UPDATE friendship_request_types SET name='best_friends' WHERE id=2;