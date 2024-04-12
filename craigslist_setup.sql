-- Craigslist Schema Definition (DDL)

-- Define Region table
CREATE TABLE Region (
    region_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Define User table
CREATE TABLE User (
    user_id INT PRIMARY KEY,
    username VARCHAR(255) NOT NULL
);

-- Define Post table
CREATE TABLE Post (
    post_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    user_id INT NOT NULL,
    region_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (region_id) REFERENCES Region(region_id)
);

-- Define Category table
CREATE TABLE Category (
    category_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Define UserRegion table
CREATE TABLE UserRegion (
    user_id INT NOT NULL,
    region_id INT NOT NULL,
    PRIMARY KEY (user_id, region_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (region_id) REFERENCES Region(region_id)
);

-- Sample Data Insertions

-- Insert sample data into Region table
INSERT INTO Region (region_id, name)
VALUES (1, 'San Francisco'),
       (2, 'New York'),
       (3, 'Los Angeles');

-- Insert sample data into User table
INSERT INTO User (user_id, username)
VALUES (1, 'user1'),
       (2, 'user2');

-- Insert sample data into Post table
INSERT INTO Post (post_id, title, user_id, region_id)
VALUES (1, 'Apartment for Rent', 1, 1),
       (2, 'Job Opportunity', 2, 2);

-- Insert sample data into Category table
INSERT INTO Category (category_id, name)
VALUES (1, 'Housing'),
       (2, 'Jobs');

-- Insert sample data into UserRegion table
INSERT INTO UserRegion (user_id, region_id)
VALUES (1, 1),
       (2, 2);
