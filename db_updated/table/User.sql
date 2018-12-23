CREATE DATABASE IF NOT EXISTS event_management; 
USE event_management;

CREATE TABLE User(
id INT PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(70) UNIQUE NOT NULL,
pass VARCHAR(255) NOT NULL,
email VARCHAR(70) UNIQUE NOT NULL,
phone_number VARCHAR(20) UNIQUE,
address VARCHAR(255),
user_type ENUM('Participant','Advertiser','Administrator') NOT NULL
);
