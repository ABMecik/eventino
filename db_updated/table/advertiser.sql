USE event_management;

CREATE TABLE advertiser(
advertiser_id INT NOT NULL,
advertiser_name VARCHAR(70),
logo VARCHAR(70),
advertiser_description VARCHAR(70),
advertiser_type ENUM('Community','Corporation'),
PRIMARY KEY (advertiser_id),
CONSTRAINT FK_advertiser_user FOREIGN KEY (advertiser_id) REFERENCES user(id)
);