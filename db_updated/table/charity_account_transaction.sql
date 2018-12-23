CREATE DATABASE IF NOT EXISTS event_management; 
USE event_management;

CREATE TABLE charity_account_transaction(
charity_account_transaction_id INT NOT NULL AUTO_INCREMENT,
ticket_id INT,
amount DECIMAL(15,2) NOT NULL,
charity_account_transaction_date DATETIME NOT NULL,
PRIMARY KEY (charity_account_transaction_id),
CONSTRAINT FK_charity_account_transaction_ticket FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id)
);
