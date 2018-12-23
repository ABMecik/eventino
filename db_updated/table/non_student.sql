USE event_management;

CREATE TABLE non_student(
non_student_id INT NOT NULL,
PRIMARY KEY (non_student_id),
CONSTRAINT FK_non_student_participant FOREIGN KEY (non_student_id) REFERENCES participant(participant_id)
);