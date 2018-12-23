CREATE DATABASE IF NOT EXISTS event_management; 
USE event_management;

DELIMITER $$
DROP TRIGGER IF EXISTS after_create_user$$
CREATE TRIGGER after_create_user
    AFTER INSERT ON event_management.user
    FOR EACH ROW BEGIN
		IF(NEW.user_type = 'participant') THEN 
			INSERT INTO participant(participant_id,participant_type) VALUES(NEW.id,'Non-Student');
            INSERT INTO non_student(non_student_id) VALUES(NEW.id);
        ELSEIF(NEW.user_type = 'advertiser') THEN
			INSERT INTO advertiser(advertiser_id) VALUES(NEW.id);
		END IF;
	END$$
DELIMITER ;
