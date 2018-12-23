CREATE DATABASE IF NOT EXISTS event_management; 
USE event_management;

CREATE TABLE get_certificate(
participant_id INT NOT NULL,
certificate_id INT NOT NULL,
PRIMARY KEY (certificate_id, participant_id),
CONSTRAINT FK_certificate_get_certificate FOREIGN KEY (certificate_id) REFERENCES certificate(certificate_id),
CONSTRAINT FK_participant_get_certificate FOREIGN KEY (participant_id) REFERENCES participant(participant_id)
);
