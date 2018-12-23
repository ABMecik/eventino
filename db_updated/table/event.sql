CREATE DATABASE IF NOT EXISTS event_management; 
USE event_management;

CREATE TABLE event(
event_id INT NOT NULL AUTO_INCREMENT,
advertiser_id INT,
system_account_transaction_id INT,
account_transaction_id INT,
event_address VARCHAR(255),
event_title VARCHAR(70),
event_desc VARCHAR(255),
event_expire_date DATE,
event_publish_date DATE,
event_time DATE,
event_type VARCHAR(70),
event_photo VARCHAR(255),
PRIMARY KEY (event_id),
CONSTRAINT FK_advertiser_event FOREIGN KEY (advertiser_id) REFERENCES advertiser(advertiser_id),
CONSTRAINT FK_system_account_transaction_event FOREIGN KEY (system_account_transaction_id) REFERENCES system_account_transaction(system_account_transaction_id),
CONSTRAINT FK_account_transaction_event FOREIGN KEY (account_transaction_id) REFERENCES account_transaction(account_transaction_id)
);
