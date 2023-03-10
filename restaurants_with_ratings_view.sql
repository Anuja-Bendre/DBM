CREATE OR REPLACE VIEW restaurant_great_avg
AS SELECT r.restaurant_name,
CONCAT(l.street," ",l.city, " ",l.state, l.zipcode) AS address,
 l.restaurant_rating AS rating
FROM restaurant r RIGHT JOIN
	location l USING(restaurant_id)
WHERE l.restaurant_rating > (SELECT AVG(restaurant_rating) FROM location l2);

SELECT * FROM restaurant_great_avg;