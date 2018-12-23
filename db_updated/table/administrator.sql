CREATE DATABASE IF NOT EXISTS event_management; 
USE event_management;

CREATE TABLE administrator(
administrator_id INT NOT NULL,
administrator_name VARCHAR(70),
administrator_surname VARCHAR(70),
profile_picture VARCHAR(70),
PRIMARY KEY (administrator_id),
CONSTRAINT FK_administrator_user FOREIGN KEY (administrator_id) REFERENCES user(id)
);
