CREATE DATABASE IF NOT EXISTS event_management; 
USE event_management;

DELIMITER $$
DROP TRIGGER IF EXISTS create_event$$
CREATE TRIGGER create_event
    AFTER INSERT ON event_management.system_account_transaction
    FOR EACH ROW BEGIN
    DECLARE event_creator_id INT;
        IF(NEW.transaction_desc = 'event-income') THEN
            SET SQL_SAFE_UPDATES=0;
			INSERT INTO event VALUES(null,null,NEW.system_account_transaction_id,NEW.account_transaction_id,null,null,null,null,null,null,null,null);
   
            UPDATE event e
			INNER JOIN account_transaction a ON e.account_transaction_id = a.account_transaction_id
			SET e.advertiser_id = a.user_id
			WHERE e.account_transaction_id = a.account_transaction_id;
            SET SQL_SAFE_UPDATES=1;
        END IF;
	END$$
DELIMITER ;
