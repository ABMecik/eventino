CREATE DATABASE IF NOT EXISTS event_management; 
USE event_management;

CREATE TABLE Participant(
participant_id INT NOT NULL,
profile_picture VARCHAR(255), 
nationality VARCHAR(70),
birthdate DATE DEFAULT NULL,
surname VARCHAR(70),
participant_name VARCHAR(70),
gender VARCHAR(10),
job_title VARCHAR(70),
foreign_languages VARCHAR(255),
certificates VARCHAR(255),
corporation_id INT,
participant_type ENUM('Student','Non-Student') NOT NULL,
PRIMARY KEY (participant_id),
CONSTRAINT FK_participant_user FOREIGN KEY (participant_id) REFERENCES user(id),
CONSTRAINT FK_Participant_corporation FOREIGN KEY (corporation_id) REFERENCES corporation(corporation_id)
);
