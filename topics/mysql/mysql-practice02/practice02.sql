USE exampledb;

-- Add new table
CREATE TABLE IF NOT EXISTS departments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

-- Add new data to the existing 'users' table
INSERT INTO users (username, email) VALUES ('jane_doe', 'jane@example.com');

-- Insert data into the new 'departments' table
INSERT INTO departments (department_name) VALUES ('Engineering'), ('HR'), ('Finance');

-- Add foreign key to users table
ALTER TABLE users ADD COLUMN department_id INT;

-- Create a view
CREATE VIEW user_details AS
SELECT u.username, u.email, d.department_name
FROM users u
LEFT JOIN departments d ON u.department_id = d.id;

-- Create a stored procedure
DELIMITER $$
CREATE PROCEDURE GetUsersByDepartment(IN dept_id INT)
BEGIN
    SELECT username, email
    FROM users
    WHERE department_id = dept_id;
END $$
DELIMITER ;

-- Create a trigger
DELIMITER $$
CREATE TRIGGER before_user_insert
BEFORE INSERT ON users
FOR EACH ROW
BEGIN
    IF NEW.department_id IS NULL THEN
        SET NEW.department_id = 1;  -- Default to 'Engineering'
    END IF;
END $$
DELIMITER ;
