USE event_management;

CREATE TABLE account_transaction(
account_transaction_id INT NOT NULL AUTO_INCREMENT,
ticket_id INT,
user_id INT,
amount DECIMAL(15,2) NOT NULL,
account_transaction_date DATETIME NOT NULL,
transaction_type ENUM('create-event','ticket-income','ticket-expense','load','withdraw') NOT NULL,
PRIMARY KEY (account_transaction_id),
CONSTRAINT FK_account_transaction_user FOREIGN KEY (user_id) REFERENCES user(id)
);