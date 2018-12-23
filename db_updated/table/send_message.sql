USE event_management;

CREATE TABLE send_message(
message_id INT NOT NULL,
user_id INT NOT NULL,
PRIMARY KEY (message_id, user_id),
CONSTRAINT FK_send_message FOREIGN KEY (message_id) REFERENCES message(message_id),
CONSTRAINT FK_user_send FOREIGN KEY (user_id) REFERENCES user(id)
);