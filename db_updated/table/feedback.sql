USE event_management;

CREATE TABLE feedback(
feedback_id INT NOT NULL AUTO_INCREMENT,
feedback_title VARCHAR(70),
feedback_date DATE NOT NULL,
feedback_desc TEXT(2000),
PRIMARY KEY (feedback_id)
);