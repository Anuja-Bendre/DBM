-- DROP VIEW IF EXISTS rest_phy_features;

CREATE OR REPLACE VIEW rest_phy_features AS
SELECT r.restaurant_name AS Restaurant_Name,
	-- CONCAT(l.street," ", l.street2," ", l.city," ", l.state," ", l.zipcode ," ") AS Address,
        p.physical_feature AS Facilities
FROM restaurant r RIGHT JOIN location l USING(restaurant_id)
				LEFT JOIN restaurants_with_physical_feature rp USING(location_id)
                INNER JOIN physical_feature p USING (physical_feature_id)
ORDER BY restaurant_name DESC; -- address

SELECT * FROM rest_phy_features;

-- 