CREATE TABLE Users (
    USER_ID INT PRIMARY KEY,
    AGE INT,
    GENDER VARCHAR(10),
    COUNTRY VARCHAR(50)
);
select  * from users
ALTER TABLE Users
ADD NAME VARCHAR(100);

---creating for subscrtion 

CREATE TABLE Subscriptions (
    SUBSCRIPTION_ID SERIAL PRIMARY KEY,
    USER_ID INT,
    SUBSCRIPTION_TYPE VARCHAR(20),
    MONTHLY_SPEND FLOAT,
    FOREIGN KEY (USER_ID) REFERENCES Users(USER_ID)
);

select  * from Subscriptions

--creating table for devices 

CREATE TABLE Devices (
    DEVICE_ID SERIAL PRIMARY KEY,
    USER_ID INT,
    DEVICE VARCHAR(50),
    FOREIGN KEY (USER_ID) REFERENCES Users(USER_ID)
);

select  * from Devices

--creating table for usage 

CREATE TABLE Usage (
    USAGE_ID SERIAL PRIMARY KEY,
    USER_ID INT,
    VIEWING_HOURS_PER_WEEK FLOAT,
    HOUSEHOLD_SIZE INT,
    INCOME_LEVEL FLOAT,
    FOREIGN KEY (USER_ID) REFERENCES Users(USER_ID)
);

select  * from Usage


create Table moviesData (
movies_id int primary key,
Title varchar(200),
Genre varchar(200),
Languages varchar(100),
Series_Movie varchar(200),
Countr_Availability varchar(200),
Runtime varchar(100),
IMDb_Score Float

);

ALTER TABLE moviesData
ALTER COLUMN IMDb_Score TYPE DECIMAL(3,1) USING IMDb_Score::DECIMAL(3,1);


select * from moviesData

copy moviesData from 'D:\SQL project\Movies.csv' DELIMITER ',' csv header 

copy moviesData (movies_id,title,genre,Languages,Series_Movie,Countr_Availability,Runtime,IMDb_Score) FROM 'D:\NETFLIX.DATA\Movies.csv' DELIMITER ',' CSV HEADER;

COPY moviesData (movies_id, title, genre, Languages, Series_Movie, Countr_Availability, Runtime, IMDb_Score) FROM 'D:\\SQL project\\Moviess.csv'DELIMITER ','CSV HEADER;




--inserting valuses in users table 

INSERT INTO Users (user_id,AGE, GENDER, COUNTRY)
VALUES (2,'kala sen',35, 'Female', 'USA');

INSERT INTO Users 
VALUES (1, 'kimona tom',45, 'Female', 'USA');


INSERT INTO Users (user_id, AGE, GENDER, COUNTRY)
VALUES ( 3,'maylene qutar',30, 'Male', 'Canada');
INSERT INTO Users  
VALUES (1,'nimon talk',30, 'male', 'Canada');

INSERT INTO Users  
VALUES 
(4,'jamlene quin',35, 'female', 'UK');

INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (5, 'Ava Jones', 31, 'Female', 'New Zealand');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (6, 'Oliver Garcia', 26, 'Male', 'USA');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (7, 'Isabella Martinez', 29, 'Female', 'Canada');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (8, 'Elijah Rodriguez', 33, 'Male', 'UK');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (9, 'Sophia Davis', 22, 'Female', 'Australia');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (10, 'Lucas Hernandez', 27, 'Male', 'New Zealand');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (11, 'Mia Lopez', 30, 'Female', 'USA');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (12, 'Mason Wilson', 35, 'Male', 'Canada');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (13, 'Amelia Anderson', 24, 'Female', 'UK');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (14, 'Logan Thomas', 28, 'Male', 'Australia');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (15, 'Harper Taylor', 32, 'Female', 'New Zealand');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (16, 'Ethan Moore', 26, 'Male', 'USA');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (17, 'Evelyn Martin', 27, 'Female', 'Canada');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (18, 'James Jackson', 36, 'Male', 'UK');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (19, 'Abigail White', 29, 'Female', 'Australia');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (20, 'Alexander Harris', 31, 'Male', 'New Zealand');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (21, 'Charlotte Thompson', 28, 'Female', 'USA');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (22, 'Henry Martin', 34, 'Male', 'Canada');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (23, 'Mila Walker', 23, 'Female', 'UK');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (24, 'Sebastian Lee', 45, 'Male', 'Australia');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (25, 'Aria Young', 31, 'Female', 'New Zealand');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (26, 'Jack King', 26, 'Male', 'USA');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (27, 'Aurora Wright', 29, 'Female', 'Canada');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (28, 'Aiden Green', 33, 'Male', 'UK');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (29, 'Ella Scott', 22, 'Female', 'Australia');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (30, 'Samuel Adams', 27, 'Male', 'New Zealand');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (31, 'Scarlett Baker', 30, 'Female', 'USA');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (32, 'Matthew Nelson', 35, 'Male', 'Canada');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (33, 'Grace Carter', 24, 'Female', 'UK');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (34, 'Wyatt Mitchell', 28, 'Male', 'Australia');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (35, 'Chloe Perez', 32, 'Female', 'New Zealand');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (36, 'Leo Roberts', 26, 'Male', 'USA');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (37, 'Victoria Turner', 27, 'Female', 'Canada');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (38, 'Julian Phillips', 36, 'Male', 'UK');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (39, 'Penelope Campbell', 29, 'Female', 'Australia');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (40, 'Gabriel Parker', 31, 'Male', 'New Zealand');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (41, 'Layla Evans', 28, 'Female', 'USA');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (42, 'Daniel Edwards', 34, 'Male', 'Canada');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (43, 'Riley Collins', 23, 'Female', 'UK');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (44, 'Carter Stewart', 45, 'Male', 'Australia');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (45, 'Nora Sanchez', 31, 'Female', 'New Zealand');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (46, 'Luke Morris', 26, 'Male', 'USA');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (47, 'Zoey Rivera', 29, 'Female', 'Canada');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (48, 'Owen Price', 33, 'Male', 'UK');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (49, 'Lily Reed', 22, 'Female', 'Australia');
INSERT INTO Users (USER_ID, NAME, AGE, GENDER, COUNTRY) VALUES (50, 'Isaac Hughes', 27, 'Male', 'New Zealand')


--inserting valuses in Subscriptions table 

INSERT INTO Subscriptions (USER_ID, SUBSCRIPTION_TYPE, MONTHLY_SPEND) VALUES (1, 'Premium', 15.99);


INSERT INTO Subscriptions  VALUES (1, 'Premium', 15.99);


INSERT INTO Subscriptions (USER_ID, SUBSCRIPTION_TYPE, MONTHLY_SPEND) VALUES (2, 'Basic', 8.99);

INSERT INTO Subscriptions VALUES (2, 'Basic', 8.99);


--inserting valuses in Devices table 

INSERT INTO Devices (USER_ID, DEVICE) VALUES (1, 'Laptop');
INSERT INTO Devices VALUES (1, 'Laptop');


INSERT INTO Devices (USER_ID, DEVICE) VALUES (2, 'Smartphone');
INSERT INTO Devices VALUES (2, 'Smartphone');


--inserting valuses in Usage table 

INSERT INTO Usage (USER_ID, VIEWING_HOURS_PER_WEEK, HOUSEHOLD_SIZE, INCOME_LEVEL) VALUES (1, 20.5, 4, 75000);
INSERT INTO Usage VALUES (1, 20.5, 4, 75000);


INSERT INTO Usage (USER_ID, VIEWING_HOURS_PER_WEEK, HOUSEHOLD_SIZE, INCOME_LEVEL) VALUES (2, 10.0, 2, 50000);
INSERT INTO Usage VALUES (2, 10.0, 2, 50000);


select * from moviesData


--inserting valuses in movies data table 

INSERT INTO moviesData (MOVIES_ID, TITLE, GENRE, LANGUAGES, SERIES_MOVIE, COUNTR_AVAILABILITY, IMDB_SCORE, RUNTIME) 
VALUES (1, 'Lets Fight Ghost', 'Crime, Drama, Fantasy, Horror, Romance', 'Swedish, Spanish', 
		'Series', 'Thailand', 7.9, '30 minutes');
INSERT INTO moviesData (MOVIES_ID, TITLE, GENRE, LANGUAGES, SERIES_MOVIE, COUNTR_AVAILABILITY, IMDB_SCORE, RUNTIME) 
VALUES (2,'HOW TO BUILD A GIRL','Comedy','English','Movie','Canada','5.8',	'1-2 hour'),
(3,'The brunch','Comedy','Thai','Movie','Thailand','7.4','1-2 hour'),
(4,'Gleboka woda','Drama','Polish',	'Series', 'Poland','7.5','30 minutes'),
(5,'Only a Mother','Drama','Swedish','Movie','Lithuania,Poland,France,Italy,Spain,Greece,Belgium,
 Portugal,Netherlands,Germany,Switzerland,United Kingdom,Iceland,Czech Republic','6.7','1-2 hour'),

INSERT INTO moviesData (MOVIES_ID, TITLE, GENRE, LANGUAGES, SERIES_MOVIE, COUNTR_AVAILABILITY, IMDB_SCORE, RUNTIME) 
VALUES(6,'Snowroller','Comedy','Swedish,English,German,Norwegian','Movie','Lithuania,Poland,France,Italy,Spain,Greece,Czech Republi,Belgium,
 Portugal,Hungary,Slovakia,Netherlands,Germany,Romania,Switzerland,United Kingdom,Iceland','6.6','1-2 hour')
INSERT INTO moviesData (MOVIES_ID, TITLE, GENRE, LANGUAGES, SERIES_MOVIE, COUNTR_AVAILABILITY, IMDB_SCORE, RUNTIME) 
VALUES(7,'The Invisible','Crime,Drama,Fantasy,Mystery,Thriller','English','Movie','Lithuania,Poland,France,Italy,Spain,
 Slovakia,Netherlands,Germany,Romania,Iceland','6.2','1-2 hour')
INSERT INTO moviesData (MOVIES_ID, TITLE, GENRE, LANGUAGES, SERIES_MOVIE, COUNTR_AVAILABILITY, IMDB_SCORE, RUNTIME) 
VALUES(8,'The Simple Minded Murderer','Drama','Scanian,Swedish','Movie','Lithuania,Poland,France,Italy,Spain,Greece,
 Portugal,Hungary,Slovakia,Netherlands,Germany,Romania,Switzerland,United Kingdom,Icelan','7.6','1-2 hour');


INSERT INTO moviesData (MOVIES_ID, TITLE, GENRE, LANGUAGES, SERIES_MOVIE, COUNTR_AVAILABILITY, IMDB_SCORE, RUNTIME) 
VALUES(9,'To Kill a Child',	'Short, Drama',	'Spanish',	'Movie','Lithuania,Poland,France,Italy,Spain,Greece,Czech Republic,Belgium,Iceland','7.7','30 minutes')


INSERT INTO moviesData (MOVIES_ID, TITLE, GENRE, LANGUAGES, SERIES_MOVIE, COUNTR_AVAILABILITY, IMDB_SCORE, RUNTIME) 
VALUES(10,'Joker','Crime,Drama,Thriller','English','Movie','Lithuania,Poland,France,Italy,Spain,Greece,Belgium,Portugal,Netherlands,Germany,Iceland,Czech Republic','8.4','1-2 hour')

INSERT INTO moviesData (MOVIES_ID, TITLE, GENRE, LANGUAGES, SERIES_MOVIE, COUNTR_AVAILABILITY, IMDB_SCORE, RUNTIME) 
VALUES(11,'I','Action, Adventure, Fantasy, Sci-Fi','English, Sanskrit','Movie','Lithuania,Poland,France,Italy,Spain,Greece,Czech Republic,Belgium,Portugal,Hungary,Slovakia,Netherlands,Germany,Romania,Iceland',	'6.5','1-2 hour')

INSERT INTO moviesData (MOVIES_ID, TITLE, GENRE, LANGUAGES, SERIES_MOVIE, COUNTR_AVAILABILITY, IMDB_SCORE, RUNTIME) 
VALUES(12,'Harrys Daughters','Adventure, Drama, Fantasy, Mystery','English','Movie','Lithuania,Poland,France,Italy,Spain,Greece,Czech Republic,Belgium,Portugal,Hungary,Slovakia,Netherlands,Germany,Romania,Switzerland,United Kingdom,Iceland','8.1','1-2 hour')

INSERT INTO moviesData (MOVIES_ID, TITLE, GENRE, LANGUAGES, SERIES_MOVIE, COUNTR_AVAILABILITY, IMDB_SCORE, RUNTIME) 
VALUES(13,'Gyllene Music','Fantasy, Mystery','English','Movie','Lithuania,Poland,France,Germany,Romania,Switzerland,UnitedKingdom,Iceland','7.7','60 mins')

INSERT INTO moviesData (MOVIES_ID, TITLE, GENRE, LANGUAGES, SERIES_MOVIE, COUNTR_AVAILABILITY, IMDB_SCORE, RUNTIME) 
VALUES(14,'Girls und Panzer das Finale','Animation, Action, Comedy','Japanese','Series','Japan','7.3','30 minutes'),
(15,'The Coroner','Crime, Drama','English','Series','Canada','7','30 minutes'),
(16,'Brave New World','Drama, Sci-Fi','English','Series','Poland,Czech Republic,Hungary,Slovakia,Romania,India','7.1','30 minutes'),
(17,'Comrades: Almost a Love Story','Drama, Romance	Cantonese, Mandarin','English',	'Movie','South Korea','8.1','1-2 hour'),
(18,'The Closet','Comedy','French',	'Movie','South Korea','7','1-2 hour'),
(19,'The Mysterians	Action','Family, Sci-Fi, Thriller','Japanese, English','Movie','Japan','6.2','1-2 hour'),
(20,'Repast','Drama','Japanese','Movie','Japan','7.7','1-2 hour'),
(21,'Sway','Crime,Drama','Japanese','Movie','Japan','7.2','1-2 hour'),
(22,'When a Woman Ascends the Stairs','Drama','Japanese','Movie','Japan','8.1',	'1-2 hour'),
(23,'Yearning',	'Drama','Japanese',	'Movie','Japan','8.1','1-2 hour'),
(24,'Ginza Cosmetics','Drama','Japanese, English','Movie','Japan','6.9','1-2 hour')

INSERT INTO moviesData (MOVIES_ID, TITLE, GENRE, LANGUAGES, SERIES_MOVIE, COUNTR_AVAILABILITY, IMDB_SCORE, RUNTIME) 
VALUES(25,'Floating Clouds','Drama,Romance','Japanese','Movie','Japan','7.7', '2 hrs'),
(26,'Restart After Come Back Home','Drama, Romance','Japanese',	'Movie','Japan','7.2','1-2 hour'),
(27,'Trial by Fire','Biography,Drama','English','Movie','United Kingdom','6.9','2 hrs'),
(28,'5 Minute','Comedy','English','Movie','Romania','8.6','1-2 hour'),
(29,'Dilili in Paris','Animation, Adventure, Family, Mystery','French','Movie','Germany,Switzerland','7','1-2 hour'),
(30,'Years and Years','Drama, Sci-Fi','English','Series','Belgium','8.3','30 minutes'),
(31,'The New Pope','Drama','English,Italian',	'Series','Belgium,Netherlands',	'8.2','30 minutes'),
(32,'Life and Nothing But','Drama, War','French','Movie','France,Belgium','7.4','2 hrs'),
(33,'Let Joy Reign Supreme','Drama, History, War','French, Breton','Movie','France,Belgium','7.1','1-2 hour'),
(34,'Coup de Torchon','Comedy,Crime,Drama,French','English','Movie','France,Belgium','7.5','2 hrs'),
(35,'Framing John DeLorean','Documentary, Biography, Drama','English','Movie','Poland','6.5','1-2 hour'),
(36,'The Bold Type','Drama','English','Series','Lithuania,Poland,Italy,Spain,Greece,Czech Republic,Belgium,Portugal,United Kingdom','8','30 minutes'),
(37,'Alice','Comedy,Romance','English, Cantonese','Series','Lithuania,Poland,Franc,India,Russia,Iceland,Switzerland','6.6','30 minutes'),
(38,'Miss Baek','Drama','Korean','Movie','South Korea',	'6.6','1-2 hour'),
(39,'Old Marine Boy','Documentary',	'Korean','Movie','South Korea','6.9','1-2 hour'),
(40,'Ordinary People','Drama','English','Movie','South Korea','7.7','1-2 hour'),
(41,'Paths of the Soul','Drama','Tibetan','Movie','South Korea','7.5','1-2 hour'),
(42,'Promise at Dawn','Biography, Drama, Romance, War','French, Polish, Spanish, English','Movie','South Korea','7.2','2 hrs'),
(43,'Rebel in the Rye','Biography, Drama, Romance, War','English','Movie','South Korea','6.7','1-2 hour'),
(44,'The Return','Drama','Russian','Movie','South Korea','8','1-2 hour'),
(45,'The Rookies','Crime, Drama','English','Movie','South Korea','6.7','1-2 hour'),  
(46,'Stray','Action, Crime, Fantasy, Thriller','English','Movie','South Korea','4.8','1-2 hour'),
(47,'Stand by Me','Adventure, Drama','English','Movie','South Korea','8.1','1-2 hour'),
(48,'Wonderstruck','Adventure, Drama, Mystery','English, Spanish','Movie','South Korea','6.2','1-2 hour'),
(49,'Keys To The Heart','Comedy,Drama, Family','Korean','Movie','South Korea','7.5','2 hrs')

select * from moviesData

---showing realtionship with user id for renvue and subbscription

CREATE TABLE UserMovies (
    USER_ID INT,
    MOVIES_ID INT,
    SUBSCRIPTION varchar(100),
    REVENUE INT,
    GENDER VARCHAR(100),
    FOREIGN KEY (USER_ID) REFERENCES Users(USER_ID),
    FOREIGN KEY (MOVIES_ID) REFERENCES moviesData(MOVIES_ID)
);

DROP TABLE UserMovies;

select * from moviesData
select * from usermovies
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender)
VALUES (1, 1, 'premium', 650000, 'male');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (2, 2, 'standard', 450000, 'female');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (3, 3, 'basic', 250000, 'male');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (4, 4, 'premium', 750000, 'female');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (5, 5, 'standard', 550000, 'male');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (6, 6, 'basic', 150000, 'female');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (7, 7, 'premium', 850000, 'male');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (8, 8, 'standard', 650000, 'female');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (9, 9, 'basic', 350000, 'male');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (10, 10, 'premium', 950000, 'female');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (11, 11, 'standard', 550000, 'male');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (12, 12, 'basic', 450000, 'female');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (13, 13, 'premium', 650000, 'male');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (14, 14, 'standard', 350000, 'female');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (15, 15, 'basic', 150000, 'male');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (16, 16, 'premium', 850000, 'female');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (17, 17, 'standard', 650000, 'male');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (18, 18, 'basic', 450000, 'female');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (19, 19, 'premium', 750000, 'male');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (20, 20, 'standard', 550000, 'female');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (21, 21, 'basic', 250000, 'male');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (22, 22, 'premium', 950000, 'female');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (23, 23, 'standard', 650000, 'male');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (24, 24, 'basic', 350000, 'female');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (25, 25, 'premium', 850000, 'male');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (26, 26, 'standard', 550000, 'female');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (27, 27, 'basic', 150000, 'male');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (28, 28, 'premium', 750000, 'female');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (29, 29, 'standard', 650000, 'male');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (30, 30, 'basic', 450000, 'female');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (31, 31, 'premium', 950000, 'male');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (32, 32, 'standard', 550000, 'female');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (33, 33, 'basic', 250000, 'male');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (34, 34, 'premium', 850000, 'female');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (35, 35, 'standard', 650000, 'male');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (36, 36, 'basic', 350000, 'female');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (37, 37, 'premium', 750000, 'male');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (38, 38, 'standard', 550000, 'female');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (39, 39, 'basic', 150000, 'male');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (40, 40, 'premium', 950000, 'female');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (41, 41, 'standard', 650000, 'male');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (42, 42, 'basic', 450000, 'female');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (43, 43, 'premium', 850000, 'male');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (44, 44, 'standard', 550000, 'female');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (45, 45, 'basic', 250000, 'male');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (46, 46, 'premium', 750000, 'female');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (47, 47, 'standard', 650000, 'male');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (48, 48, 'basic', 350000, 'female');
INSERT INTO UserMovies (user_id, movies_id, subscription, revenue, gender) VALUES (49, 49, 'premium', 850000, 'male');

select * from usermovies


----------------- joining THREE tables (users,usersmovies & moviesdata) -----------------
 
SELECT 
 u.USER_ID,
 u.NAME,
    u.AGE,
    u.GENDER AS USER_GENDER,
    u.COUNTRY,
    um.SUBSCRIPTION,
    um.REVENUE,
    m.TITLE,
    m.GENRE,
    m.LANGUAGES,
    m.SERIES_MOVIE,
    m.COUNTR_AVAILABILITY,
    m.RUNTIME,
    m.IMDB_SCORE
FROM 
    Users u
JOIN 
    UserMovies um ON u.USER_ID = um.USER_ID
JOIN 
    MoviesData m ON um.MOVIES_ID = m.MOVIES_ID;
 
----------------------------------------------------join functions--------------------------------------------- 

select * from moviesdata 
select * from usermovies
select * from users
												(----Inner Join------)
SELECT 
    users.user_id,
    moviesdata.movies_id,
    moviesdata.title
    
FROM 
    usermovies
INNER JOIN users ON usermovies.user_id = users.user_id
INNER JOIN moviesdata ON usermovies.movies_id = moviesdata.movies_id;


											(Right join )
SELECT 
    users.user_id,
    moviesdata.movies_id,
    moviesdata.title
    
FROM 
    usermovies
RIGHT JOIN users ON usermovies.user_id = users.user_id
RIGHT JOIN moviesdata ON usermovies.movies_id = moviesdata.movies_id;

													
											(left join)

SELECT 
    users.user_id,
    moviesdata.movies_id,
    moviesdata.title
    
FROM 
    usermovies
LEFT JOIN users ON usermovies.user_id = users.user_id
LEFT JOIN moviesdata ON usermovies.movies_id = moviesdata.movies_id;

												(Cross join)
SELECT 
    users.user_id,
    users.users,
    moviesdata.movies_id,
    moviesdata.title,
    usermovies.watch_date
FROM users
CROSS JOIN usermovies
CROSS JOIN moviesdata;
													
----------------------------------------------------==========----------------------------------------------------------------								----------------------------===---------------------------					
SELECT * FROM MOVIESDATA
SELECT * FROM USERMOVIES
SELECT * FROM USERS													
					     (---------------------USING  , GROUP BY  , HAVING, ORDER ------------------------)													
SELECT * FROM MOVIESDATA
													
SELECT 
    moviesdata.title,
    COUNT(usermovies.user_id) AS num_users
FROM 
    moviesdata
INNER JOIN usermovies ON moviesdata.movies_id = usermovies.movies_id
INNER JOIN users ON usermovies.user_id = users.user_id
GROUP BY 
    moviesdata.title
HAVING 
    COUNT(usermovies.user_id) < 45
ORDER BY 
    num_users ASC;
													
							(----order , having , Group by -----)					
SELECT 
    series_movie,
    AVG(imdb_score) AS avg_imdb_score
FROM 
    moviesdata
GROUP BY 
    series_movie
HAVING 
    AVG(imdb_score) > 7.0
ORDER BY 
    avg_imdb_score DESC;
													
		(---- for ascending ---)									
	SELECT 
    series_movie,
    AVG(imdb_score) AS avg_imdb_score
FROM 
    moviesdata
GROUP BY 
    series_movie
HAVING 
    AVG(imdb_score) > 7.0
ORDER BY 
    avg_imdb_score ASC;																									
													
	---------------------  Sub query -------------------												

SELECT 
    title,
    series_movie,
    imdb_score
FROM 
    moviesdata
WHERE 
    imdb_score = (
        SELECT 
            MAX(md2.imdb_score)
        FROM 
            moviesdata AS md2
        WHERE 
            md2.series_movie = moviesdata.series_movie
    )
ORDER BY 
    series_movie,
    title;
 ------------------------------------  sum query -------------------------------------
 SELECT 
    series_movie,
    SUM(imdb_score) AS total_imdb_score
FROM 
    moviesdata
GROUP BY 
    series_movie
ORDER BY 
    total_imdb_score DESC;
			
			
SELECT 
    series_movie,
    SUM(imdb_score) AS total_imdb_score
FROM 
    moviesdata
GROUP BY 
    series_movie
ORDER BY 
    total_imdb_score ASC;			
			
			
			
			
			
			
			
-----------------------------count query -----------------------------------			
SELECT 
    series_movie,
    COUNT(*) AS movie_count
FROM 
    moviesdata
GROUP BY 
    series_movie
ORDER BY 
    movie_count DESC;
					
----------------------------- =======  -------------------------- ====== ------------------------ ====== -----------------			
			
			
			
													