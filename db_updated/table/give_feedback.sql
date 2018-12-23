USE event_management;

CREATE TABLE give_feedback(
user_id INT NOT NULL,
feedback_id INT NOT NULL,
PRIMARY KEY (user_id, feedback_id),
CONSTRAINT FK_give_feedback FOREIGN KEY (feedback_id) REFERENCES feedback(feedback_id),
CONSTRAINT FK_user_feedback FOREIGN KEY (user_id) REFERENCES user(id)
);