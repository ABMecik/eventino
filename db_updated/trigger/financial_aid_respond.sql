USE event_management;

DELIMITER $$
DROP TRIGGER IF EXISTS financial_aid_respond$$
CREATE TRIGGER financial_aid_respond
    BEFORE UPDATE ON request_financial_aid
    FOR EACH ROW 
BEGIN
	DECLARE ticket_price INT;
    DECLARE charity_id INT;
    DECLARE charity_balance INT;
	DECLARE supported_event_id INT;
    IF(NEW.is_accepted is true) THEN 
    
		SELECT SUM(charity_account_transaction.amount)
        INTO charity_balance
		FROM charity_account_transaction;
        
		SELECT ticket.price
		INTO ticket_price
		FROM ticket
		WHERE ticket.ticket_id = OLD.ticket_id;
		
		IF(ticket_price <= charity_balance) THEN
			
			INSERT INTO charity_account_transaction VALUES(null,OLD.ticket_id,ticket_price*-1,now());
			
			SELECT charity_account_transaction.charity_account_transaction_id
			INTO charity_id
			FROM charity_account_transaction
			WHERE NEW.ticket_id = charity_account_transaction.ticket_id;
			
			SET NEW.charity_account_transaction_id = charity_id;
			
			SELECT event.event_id
			INTO supported_event_id
			FROM event,ticket
			WHERE ticket.ticket_id = NEW.ticket_id and ticket.event_id = event.event_id and ticket.participant_id IS NULL;
            
			UPDATE ticket
			SET participant_id = NEW.student_id,
			acquisition_date = NOW()
			WHERE event_id = supported_event_id and participant_id IS NULL
			ORDER BY event_id LIMIT 1;
		ELSE
			SET NEW.administrator_id = null,
				NEW.is_accepted = null;
		END IF;
	END IF;
END$$
DELIMITER ;