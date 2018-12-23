CREATE DATABASE IF NOT EXISTS event_management; 
USE event_management;

CREATE TABLE request_financial_aid(
ticket_id INT NOT NULL,
student_id INT NOT NULL,
charity_account_transaction_id INT,
administrator_id INT,
is_accepted BOOLEAN,
PRIMARY KEY (ticket_id,student_id),
CONSTRAINT FK_request_financial_aid_ticket FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id),
CONSTRAINT FK_request_financial_aid_student FOREIGN KEY (student_id) REFERENCES student(student_id),
CONSTRAINT FK_request_financial_aid_charity_account_transaction FOREIGN KEY (charity_account_transaction_id) REFERENCES charity_account_transaction(charity_account_transaction_id),
CONSTRAINT FK_request_financial_aid_administrator FOREIGN KEY (administrator_id) REFERENCES administrator(administrator_id)
);
