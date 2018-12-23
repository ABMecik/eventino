CREATE DATABASE IF NOT EXISTS event_management; 
USE event_management;

CREATE TABLE ticket(
ticket_id INT NOT NULL AUTO_INCREMENT,
price DECIMAL(15,2) NOT NULL,
ticket_type ENUM('Student','Non-Student') NOT NULL,
acquisition_date DATETIME,
event_id INT NOT NULL,
participant_id INT,
PRIMARY KEY(ticket_id),
CONSTRAINT FK_event_ticket FOREIGN KEY (event_id) REFERENCES event(event_id),
CONSTRAINT FK_participant_ticket FOREIGN KEY (participant_id) REFERENCES participant(participant_id)
);

ALTER TABLE account_transaction
ADD CONSTRAINT FK_account_transacton_ticket 
FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id);
