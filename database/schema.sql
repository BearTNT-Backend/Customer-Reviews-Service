DROP DATABASE IF EXISTS beartnt_reviews;

CREATE DATABASE beartnt_reviews;

USE beartnt_reviews;

CREATE TABLE ratings(
  ratings_id INT NOT NULL AUTO_INCREMENT,
  average FLOAT,
  cleanliness FLOAT,
  communication FLOAT,
  checkin FLOAT,
  accuracy FLOAT,
  location FLOAT,
  value FLOAT,
  PRIMARY KEY (ratings_id)
);


CREATE TABLE reviews (
  reviews_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(30),
  date VARCHAR(30),
  reviewBody VARCHAR(1000),
  profilePic VARCHAR(200),
  ratings_id INT,
  PRIMARY KEY (reviews_id),
  FOREIGN KEY (ratings_id)
    REFERENCES ratings(ratings_id)
);

-- INSERT INTO ratings (cleanliness, communication, checkin, accuracy, location, value) VALUES (4.4, 3.6, 2.4, 5.0, 3.4, 2.2);
-- INSERT INTO reviews (name, date, reviewBody, profilePic, ratings_id) VALUES ('sally', 'OCT 2020', 'It was sooo good', 'url.com', 1);
-- INSERT INTO reviews (name, date, reviewBody, profilePic, ratings_id) VALUES ('jim', 'OCT 2020', 'It was ok', 'url.com', 1);

-- TO SEED THE DATABASE
  -- cd into the Customer-Reviews-Service folder
  -- run the code: mysql -u root < database/schema.sql

-- TO VIEW THE WHOLE DATABASE BY LISTING
  -- run in the terminal:
  -- mysql -u root
  -- USE beartnt_reviews
  -- SELECT * FROM ratings
  -- INNER JOIN reviews
  -- ON reviews.ratings_id = ratings.ratings_id;
