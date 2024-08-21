CREATE DATABASE IF NOT EXISTS exampledb;

USE exampledb;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (username, email) VALUES ('john_doe', 'john@example.com');

CREATE USER 'exampleuser'@'%' IDENTIFIED BY 'examplepassword';
GRANT ALL PRIVILEGES ON exampledb.* TO 'exampleuser'@'%';
FLUSH PRIVILEGES;
