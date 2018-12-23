CREATE DATABASE IF NOT EXISTS event_management; 
USE event_management;

DELIMITER $$
DROP TRIGGER IF EXISTS arrange_certificate$$
CREATE TRIGGER arrange_certificate
    AFTER UPDATE ON event_management.event
    FOR EACH ROW BEGIN
    DECLARE sold_ticket_number INT;
    DECLARE ticket_number INT;
		IF(NEW.event_time IS NOT NULL) THEN
			IF(OLD.event_time IS NOT NULL) THEN
				IF(OLD.event_time <> NEW.event_time) THEN
					UPDATE certificate
					SET certificate.certificate_date = NEW.event_time
					WHERE certificate.event_id = NEW.event_id;
                END IF;
			ELSE
				INSERT INTO certificate VALUES(null,null,NEW.event_time,null,NEW.event_id);
			END IF;
        END IF;
	END$$
DELIMITER ;
