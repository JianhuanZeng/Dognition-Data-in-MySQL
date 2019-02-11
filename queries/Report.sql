/* the dogs report*/
SELECT COUNT(*) FROM dogs;
SELECT COUNT(DISTINCT Dog_Guid) FROM complete_tests;
SELECT COUNT(exclude) FROM dogs;
SELECT COUNT(DISTINCT Dog_Guid) FROM dogs WHERE exclude=1;


/* customer service */
SELECT test_name, 
AVG(rating) AS AVG_Rating, 
MIN(rating) AS MIN_Rating, 
MAX(rating) AS MAX_Rating
FROM reviews
GROUP BY test_name;
