USE event_management;

CREATE TABLE student(
student_id INT NOT NULL,
student_certificate VARCHAR(255),
university_name VARCHAR(100),
PRIMARY KEY (student_id),
CONSTRAINT FK_student_participant FOREIGN KEY (student_id) REFERENCES participant(participant_id)
);
