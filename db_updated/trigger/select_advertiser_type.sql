USE event_management;

DELIMITER $$
DROP TRIGGER IF EXISTS select_advertiser_type$$
CREATE TRIGGER select_advertiser_type 
    BEFORE UPDATE ON advertiser
    FOR EACH ROW 
BEGIN
	IF(NEW.advertiser_type <> OLD.advertiser_type OR (OLD.advertiser_type IS NULL AND NEW.advertiser_type IS NOT NULL)) THEN
		IF(NEW.advertiser_type = 'community') THEN 
				DELETE FROM corporation
				WHERE corporation.corporation_id = NEW.advertiser_id;
				INSERT INTO community(community_id) VALUES(NEW.advertiser_id);
		ELSEIF(NEW.advertiser_type = 'corporation') THEN
				DELETE FROM community
				WHERE community.community_id = NEW.advertiser_id;
				INSERT INTO corporation(corporation_id) VALUES(NEW.advertiser_id);
		END IF;
	END IF;
END$$
DELIMITER ;