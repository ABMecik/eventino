USE event_management;

DELIMITER $$
DROP TRIGGER IF EXISTS select_participant_type$$
CREATE TRIGGER select_participant_type 
    BEFORE UPDATE ON participant
    FOR EACH ROW 
BEGIN
	IF(NEW.participant_type <> OLD.participant_type OR (OLD.participant_type IS NULL AND NEW.participant_type IS NOT NULL)) THEN
		IF(NEW.participant_type = 'student') THEN 
				DELETE FROM non_student
				WHERE non_student.non_student_id = NEW.participant_id;
				INSERT INTO student(student_id) VALUES(NEW.participant_id);
		ELSEIF(NEW.participant_type = 'non-student') THEN
				DELETE FROM student
				WHERE student.student_id = NEW.participant_id;
				INSERT INTO non_student(non_student_id) VALUES(NEW.participant_id);
		END IF;
	END IF;
END$$
DELIMITER ;