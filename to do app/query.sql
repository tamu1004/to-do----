CREATE DATABASE IF NOT EXISTS `to-do-app`;
USE `to-do-app`;

CREATE TABLE IF NOT EXISTS list_name (
  list_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS task (
  id INT AUTO_INCREMENT PRIMARY KEY,
  list_id INT,
  due_date DATE NOT NULL,
  completed BOOLEAN NOT NULL DEFAULT FALSE,
  FOREIGN KEY (list_id) REFERENCES list_name(list_id)
);

SELECT * FROM task;
