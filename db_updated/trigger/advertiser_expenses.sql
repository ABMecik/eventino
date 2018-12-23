USE event_management;

DELIMITER $$
DROP TRIGGER IF EXISTS advertiser_expenses$$
CREATE TRIGGER advertiser_expenses
    AFTER INSERT ON event_management.account_transaction
    FOR EACH ROW BEGIN
    DECLARE user_balance INT;
        IF(NEW.transaction_type = 'ticket-expense') THEN
            INSERT INTO charity_account_transaction VALUES(null,NEW.ticket_id,New.amount*-(10/100),now());
		ELSEIF(NEW.transaction_type = 'create-event') THEN

            SELECT SUM(account_transaction.amount)
            INTO user_balance
            FROM account_transaction
            WHERE NEW.user_id = account_transaction.user_id;

            IF(user_balance >= NEW.amount*-1) THEN
			    INSERT INTO system_account_transaction VALUES(null,NEW.account_transaction_id,NEW.amount*-1,NOW(),'event-income');
            ELSE
                DELETE FROM account_transaction
                WHERE account_transaction_id = NEW.account_transaction_id;
            END IF;
        END IF;
	END$$
DELIMITER ;
