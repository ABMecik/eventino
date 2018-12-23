USE event_management;

CREATE TABLE certificate(
certificate_id INT NOT NULL AUTO_INCREMENT,
certificate_title VARCHAR(70),
certificate_date DATE,
certificate_description TEXT(1000),
event_id INT NOT NULL,
PRIMARY KEY(certificate_id),
CONSTRAINT FK_event_certificate FOREIGN KEY (event_id) REFERENCES event(event_id)
);