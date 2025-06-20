CREATE DATABASE IF NOT EXISTS testdb;
USE testdb;
CREATE TABLE IF NOT EXISTS testdb.users (id INT, name VARCHAR(20));
INSERT INTO testdb.users VALUES (1, 'vagrant_test');
CREATE USER 'vagrant_test'@'192.168.50.10' IDENTIFIED BY 'Tusur123';
GRANT ALL PRIVILEGES ON testdb.* TO 'vagrant_test'@'192.168.50.10';
FLUSH PRIVILEGES;