-- Create user_0d_1 and user_0d_2 if they don't already exist
CREATE USER IF NOT EXISTS 'user_0d_1'@'localhost';
CREATE USER IF NOT EXISTS 'user_0d_2'@'localhost';

-- Grant all privileges to user_0d_1 if user exists
GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'localhost';

-- Grant SELECT and INSERT privileges to user_0d_2 if user exists
GRANT SELECT, INSERT ON *.* TO 'user_0d_2'@'localhost';

-- Flush privileges to ensure that all changes take effect
FLUSH PRIVILEGES;

-- List all privileges for user_0d_1
SHOW GRANTS FOR 'user_0d_1'@'localhost';

-- List all privileges for user_0d_2
SHOW GRANTS FOR 'user_0d_2'@'localhost';

