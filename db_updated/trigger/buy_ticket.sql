CREATE DATABASE IF NOT EXISTS event_management; 
USE event_management;

DELIMITER $$
DROP TRIGGER IF EXISTS buy_ticket$$
CREATE TRIGGER buy_ticket
    BEFORE UPDATE ON event_management.ticket
    FOR EACH ROW BEGIN
    DECLARE advertiserid INT;
    DECLARE user_balance INT;
    SET SQL_SAFE_UPDATES=0;
		SELECT SUM(account_transaction.amount)
		INTO user_balance
		FROM account_transaction
		WHERE NEW.participant_id = account_transaction.user_id;
    
		IF(OLD.price <= user_balance) THEN
			INSERT INTO account_transaction VALUES(null,OLD.ticket_id,NEW.participant_id,OLD.price*-1,NOW(),'ticket-expense');
			INSERT INTO account_transaction VALUES(null,OLD.ticket_id,null,OLD.price*(90/100),NOW(),'ticket-income');
			
			UPDATE account_transaction a
			INNER JOIN ticket t ON a.ticket_id = t.ticket_id
			INNER JOIN event e ON t.event_id = e.event_id
			SET a.user_id = e.advertiser_id
			WHERE a.transaction_type = 'ticket-income' and a.ticket_id = t.ticket_id and t.event_id = e.event_id;
		ELSE

			SET NEW.participant_id = null,
			NEW.acquisition_date = null;
        END IF;
    SET SQL_SAFE_UPDATES=1;
	END$$
DELIMITER ;
