-- Comments in SQL Start with dash-dash --
--id  |app_name| category  | rating | reviews | size | min_installs | price | content_rating |   genres    | last_updated | current_version | android_version--
SELECT * FROM analytics WHERE ID = 1880;
SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';
SELECT category, COUNT(*) FROM analytics GROUP BY category;
SELECT * FROM analytics WHERE rating >= 4.8 ORDER BY reviews LIMIT 1;
SELECT category, AVG(rating) as avg_rating FROM analytics GROUP BY category ORDER BY avg_rating desc;
SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price desc LIMIT 1;
SELECT * FROM analytics WHERE min_installs <= 50 AND rating IS NOT NULL ORDER BY rating desc;
SELECT app_name FROM analytics WHERE rating < 3 AND reviews >= 10000;
SELECT * FROM analytics WHERE price BETWEEN 0.1 AND 1 ORDER BY reviews desc LIMIT 10; 
SELECT app_name, last_updated FROM analytics ORDER BY last_updated LIMIT 1;
SELECT app_name, price FROM analytics ORDER BY price desc LIMIT  1;
SELECT SUM(reviews) FROM analytics;
SELECT category, COUNT(*) FROM analytics GROUP BY category HAVING COUNT(*) > 300;
SELECT app_name, reviews, min_installs, (min_installs/reviews) AS proportion FROM analytics WHERE min_installs >= 100000 ORDER BY proportion desc LIMIT 1;
