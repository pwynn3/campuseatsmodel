/*
SQL statements can match up to the three case diagrams as follows:
1) Show SQL that will insert a new rating
*/

-- insert a new rating
INSERT INTO ratings
VALUES
(101,101,3,5,'Driver Comment', 'Restaurant Comment');

/*
2) Show SQL that when given a restuarant ID, will show the average rating, max, and min ratings. This can be done by calling a stored procedure.
You can also show SQL that will list all restuarants with average, max, and min ratings.
*/

-- average rating
SELECT AVG(restaurant_rating) AS 'Average Restaurant Rating'
FROM `order`, ratings
WHERE restaurant_id = 5;

-- max rating
SELECT MAX(restaurant_rating) AS 'Max Restaurant Rating'
FROM `order`, ratings
WHERE restaurant_id = 5;

-- min rating
SELECT MIN(restaurant_rating) AS 'Min Restaurant Rating'
FROM `order`, ratings
WHERE restaurant_id = 5;

-- show restaurant id and average rating
SELECT restaurant_id, AVG(restaurant_rating)
FROM `order`, ratings
GROUP BY restaurant_id;

-- show the restaurant ID and max rating
SELECT restaurant_id, MAX(restaurant_rating) AS MaxRating
FROM `order`, ratings
GROUP BY restaurant_id;

-- show the restaurant ID and min rating 
SELECT restaurant_id, MIN(restaurant_rating)
FROM `order`, ratings
GROUP BY restaurant_id;

/*
3) Show SQL that when given a driver ID, will show the average rating, max, and min ratings. This can be done by calling a stored procedure.
You can also show SQL that will list all drivers with average, max, and min ratings. 
*/

-- average rating
SELECT AVG(driver_rating) AS 'Average Driver Rating'
FROM `order`, ratings
WHERE driver_id = 2;

-- max rating
SELECT MAX(driver_rating) AS 'Max Driver Rating'
FROM `order`, ratings
WHERE driver_id = 2;
    
-- min rating
SELECT MIN(driver_rating) AS 'Min Driver Rating'
FROM `order`, ratings
WHERE driver_id = 2;

-- show the driver id and average rating
SELECT driver_id, AVG(driver_rating)
FROM `order`, ratings
GROUP BY driver_id;

-- show the driver_id and max rating
SELECT driver_id, MAX(driver_rating)
FROM `order`, ratings
GROUP BY driver_id;

-- show the driver_id and min rating
SELECT driver_id, MIN(driver_rating)
FROM `order`, ratings
GROUP BY driver_id;


