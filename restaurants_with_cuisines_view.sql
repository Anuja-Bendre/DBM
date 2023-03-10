CREATE OR REPLACE VIEW restaurants_with_cuisines_served AS
SELECT r.restaurant_name, c.cuisine_type
FROM restaurant r RIGHT JOIN location l USING(restaurant_id)
				LEFT JOIN restaurants_cuisine rc USING (location_id)
                INNER JOIN cuisine c USING(cuisine_id)
ORDER BY restaurant_name DESC;

SELECT * FROM restaurants_with_cuisines_served;