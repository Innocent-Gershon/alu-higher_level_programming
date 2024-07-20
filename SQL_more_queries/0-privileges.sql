-- Scenario 1: user_0d_1 and user_0d_2 root users

-- Create user_0d_1 and user_0d_2 if they don't already exist
CREATE USER IF NOT EXISTS 'user_0d_1'@'localhost';
CREATE USER IF NOT EXISTS 'user_0d_2'@'localhost';

-- Grant all privileges to user_0d_1 and user_0d_2
GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'user_0d_2'@'localhost';

-- Scenario 2: user_0d_1 root user and user_0d_2 with SELECT and INSERT privileges on user_2_db

-- Create the database user_2_db if it doesn't already exist
CREATE DATABASE IF NOT EXISTS user_2_db;

-- Grant SELECT and INSERT privileges to user_0d_2 on user_2_db
GRANT SELECT, INSERT ON user_2_db.* TO 'user_0d_2'@'localhost';

-- Flush privileges to ensure that all changes take effect
FLUSH PRIVILEGES;

-- List all privileges for user_0d_1
SHOW GRANTS FOR 'user_0d_1'@'localhost';

-- List all privileges for user_0d_2
SHOW GRANTS FOR 'user_0d_2'@'localhost';

