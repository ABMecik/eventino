USE event_management;
	
CREATE TABLE message(
message_id INT NOT NULL AUTO_INCREMENT,
message_title VARCHAR(70),
message_date DATE NOT NULL,
message_desc TEXT(2000),
PRIMARY KEY (message_id)
);
