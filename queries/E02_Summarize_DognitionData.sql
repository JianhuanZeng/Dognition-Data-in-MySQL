/* COUNT */
SELECT COUNT(DISTINCT breed)
FROM dogs;
SELECT COUNT(*)
  FROM complete_tests;

/* SUM */
SELECT SUM(ISNULL(exclude))
FROM dogs;

/* AVG, MIN, MAX   */
SELECT test_name, 
AVG(rating) AS AVG_Rating, 
MIN(rating) AS MIN_Rating, 
MAX(rating) AS MAX_Rating
FROM reviews
WHERE test_name IN ('Eye Contact Game', 'Slide')
GROUP BY test_name;
