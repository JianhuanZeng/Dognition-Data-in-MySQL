
/*  retrieve the Dog ID, subcategory_name, and test_name fields of the first 10 reviews entered in the Reviews table to be submitted in 2014 */
SELECT dog_guid, subcategory_name,  test_name
FROM reviews
WHERE YEAR(created_at)= '2014'
LIMIT 10;

/*  all of the User IDs of customers who have female dogs whose breed includes the word "terrier" somewhere in its name */
SELECT user_guid 
FROM dogs
WHERE gender='female' AND (breed LIKE '%terrier%')  /*  WHERE gender=' ' AND CHARINDEX('terrier', breed) > 0 */
LIMIT 10;

/* select the Dog ID, test name, and subcategory associated with each completed test for the first 100 tests entered in October, 2014 */
SELECT dog_guid, test_name, subcategory_name
FROM complete_tests
WHERE YEAR(created_at)= '2014' AND MONTH(created_at)= '10'
LIMIT 100;


/*  wanted to know how many tests Dognition customers complete on different days of the week */
SELECT dog_guid, created_at
FROM complete_tests
WHERE DAYNAME(created_at)="Tuesday";

SELECT dog_guid, created_at
FROM complete_tests
WHERE DAY(created_at)>15;  /*  after the 15 of every month  */

SELECT dog_guid, created_at
FROM complete_tests
WHERE created_at > '2014-02-15' AND created_at<'2014-03-15'; /*between March and February */ 

/*  examine the Dog IDs of dogs who weighed between 10 and 50 pounds  */
SELECT dog_guid, weight
FROM dogs
WHERE weight BETWEEN 10 AND 50;  /*  WHERE 10<=weight<=50; */

/*  dogs who were fixed but NOT DNA tested  */
SELECT dog_guid, dog_fixed, dna_tested
FROM dogs
WHERE dog_fixed=1 AND dna_tested=0;  /*  WHERE dog_fixed=1 AND dna_tested!=0; */

/*  look at data from dogs of the breed "Golden Retrievers."  */
SELECT dog_guid
FROM dogs
WHERE breed="golden retriever"
LIMIT 20;

SELECT dog_guid, breed
FROM dogs
WHERE breed IN ("golden retriever", "poodle")
LIMIT 20;


/* we want to know which Dognition customers received access to Dognition's first four tests for free. */
SELECT user_guid 
FROM users 
WHERE free_start_user=1;

/*  To select only the rows that have non-null data you could query:  */
SELECT user_guid 
FROM users 
WHERE free_start_user IS NOT NULL;

/*  the customers who bought annual subscriptions */
SELECT user_guid 
FROM users 
WHERE membership_type=2
LIMIT 100;
