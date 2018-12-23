USE event_management;

CREATE TABLE check_feedback(
administrator_id INT NOT NULL,
feedback_id INT NOT NULL,
PRIMARY KEY (administrator_id, feedback_id),
CONSTRAINT FK_check_feedback FOREIGN KEY (feedback_id) REFERENCES feedback(feedback_id),
CONSTRAINT FK_administrator_feedback FOREIGN KEY (administrator_id) REFERENCES administrator(administrator_id)
);