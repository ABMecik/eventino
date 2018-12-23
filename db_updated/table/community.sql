USE event_management;

CREATE TABLE community(
community_id INT NOT NULL,
corporation_id INT,
community_type VARCHAR(255),
PRIMARY KEY (community_id),
CONSTRAINT FK_community_advertiser_user FOREIGN KEY (community_id) REFERENCES advertiser(advertiser_id),
CONSTRAINT FK_community_corporation_user FOREIGN KEY (corporation_id) REFERENCES corporation(corporation_id)
);