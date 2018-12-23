CREATE DATABASE IF NOT EXISTS event_management; 
USE event_management;

CREATE TABLE corporation(
corporation_id INT NOT NULL,
sector VARCHAR(255),
PRIMARY KEY (corporation_id),
CONSTRAINT FK_corporation_advertiser_user FOREIGN KEY (corporation_id) REFERENCES advertiser(advertiser_id)
);
