CREATE USER 'oleksandr2'@'%' IDENTIFIED BY '123';
GRANT ALL PRIVILEGES ON user_balance_db.* TO 'oleksandr2'@'%';
FLUSH PRIVILEGES;
