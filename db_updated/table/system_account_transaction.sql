CREATE DATABASE IF NOT EXISTS event_management; 
USE event_management;

CREATE TABLE system_account_transaction(
system_account_transaction_id INT NOT NULL AUTO_INCREMENT,
account_transaction_id INT NOT NULL,
amount DECIMAL(15,2) NOT NULL,
system_account_transaction_date DATETIME NOT NULL,
transaction_desc ENUM('event-income','wage') NOT NULL,
PRIMARY KEY (system_account_transaction_id),
CONSTRAINT FK_account_transaction_system_account_transaction FOREIGN KEY (account_transaction_id) REFERENCES account_transaction(account_transaction_id)
);
