/* Part 1: CREATE DATABASE in MySQL*/
# mysql -uroot -p 
/* create*/
CREATE DATABASE dognition;

/* connect to*/
USE dognition;
SELECT database();
CREATE USER 'joy_user1'@'localhost' IDENTIFIED BY '123456';
GRANT ALL PRIVILEGES ON *.* TO 'joy_user1'@'localhost' WITH GRANT OPTION;

SHOW TABLES;
SHOW COLUMNS FROM table1;
DESC table1;
DROP TABLE table1;

/* Part 2: CREATE  TABLEs in MySQL*/
CREATE TABLE users (UserID  CHAR(36) NOT NULL PRIMARY KEY, MaxDogs INT, 
									  SignInCount INT, Subscribed BOOLEAN, FreeStartUser BOOLEAN, 
                                      MembershipID INT,  MembershipType INT, LastActiveAt INT, 
                                      City VARCHAR(45), State VARCHAR(20), Country VARCHAR(20), Zip INT);

     
CREATE TABLE dogs (DogID CHAR(36) NOT NULL PRIMARY KEY, Breed VARCHAR(45), 
									  BreedGroup VARCHAR(20), BreedType VARCHAR(45), 
                                      Dimension VARCHAR(45), UserID CHAR(36), Gender BOOLEAN, 
                                      Birthday INT, Weight INT, DNATested BOOLEAN, DogFixed BOOLEAN,
                                      FOREIGN KEY (UserID) REFERENCES users(UserID));
                                      
CREATE TABLE tests(test_name VARCHAR(45) NOT NULL, subcategory_name VARCHAR(20), rexclude BOOLEAN,
									UserID CHAR(36), DogID CHAR(36), UpdatedAt DATETIME,
                                    RankbyDogID INT, RankbyUserID INT, Rating INT,
                                    PRIMARY KEY(UserID, test_name, DogID,UpdatedAt),
									FOREIGN KEY (UserID) REFERENCES users(UserID),
                                    FOREIGN KEY (DogID) REFERENCES dogs(DogID));


/* Part 3: LOAD  TABLEs in MySQL*/
LOAD DATA LOCAL INFILE
'/tables/users.csv'
INTO TABLE users
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(records);

LOAD DATA LOCAL INFILE
'/tables/dogs.csv'
INTO TABLE dogs
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE '/tables/tests.csv' 
INTO TABLE tests
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SHOW WARNINGS;
