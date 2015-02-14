USE Mango;

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS ACCOUNTS;
DROP TABLE IF EXISTS CATEGORIES;
DROP TABLE IF EXISTS ITEMS;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE UNIT_STATUS
(
STATUS varchar(1) NOT NULL,
DESCRIPTION varchar(255),
PRIMARY KEY (STATUS)
);

CREATE TABLE ACCOUNTS
(
ACCOUNT_ID int NOT NULL AUTO_INCREMENT,
EMAIL_ADDRESS varchar(255) NOT NULL,
PASSWORD varchar(255) NOT NULL,
WECHAT_ID varchar(255) NOT NULL,
STATUS varchar(1) NOT NULL,
PRIMARY KEY (ACCOUNT_ID),
FOREIGN KEY (STATUS) REFERENCES UNIT_STATUS(STATUS),
UNIQUE (EMAIL_ADDRESS)
); 

CREATE TABLE CATEGORIES
(
CATEGORY_ID int NOT NULL AUTO_INCREMENT, 
CATEGORY_NAME varchar(255) NOT NULL,
CATEGORY_IMG varchar(255) NOT NULL,
CATEGORY_CMT varchar(255) NOT NULL,
PRIMARY KEY (CATEGORY_ID)
) CHARACTER SET = utf8; 

CREATE TABLE ITEMS
(
ITEM_ID int NOT NULL AUTO_INCREMENT,
ITEM_NAME varchar(255) NOT NULL,
ITEM_DESCRIPTION varchar(255) NOT NULL,
ITEM_CONDITION varchar(255) NOT NULL,
ITEM_LOCATION varchar(255) NOT NULL,
ITEM_PRICE varchar(255) NOT NULL,
ITEM_STATUS varchar(255) NOT NULL,
ITEM_PICTURES varchar(255) NOT NULL,
ITEM_POSTDATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
ACCOUNT_ID int NOT NULL,
CATEGORY_ID int NOT NULL,
PRIMARY KEY (ITEM_ID),
FOREIGN KEY (ACCOUNT_ID) REFERENCES ACCOUNTS(ACCOUNT_ID),
FOREIGN KEY (CATEGORY_ID) REFERENCES CATEGORIES(CATEGORY_ID)
) CHARACTER SET = utf8;

//Add Primary key
//Consider creating 
CREATE TABLE USER_FAVORS
(
ACCOUNT_ID int NOT NULL,
ITEM_ID int NOT NULL,
STATUS varchar(1) NOT NULL,
FAVOR_POSTDATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
FOREIGN KEY (STATUS) REFERENCES UNIT_STATUS(STATUS),
FOREIGN KEY (ACCOUNT_ID) REFERENCES ACCOUNTS(ACCOUNT_ID),
FOREIGN KEY (ITEM_ID) REFERENCES ITEMS(ITEM_ID)
) CHARACTER SET = utf8;


insert into ACCOUNT_STATUS (STATUS, DESCRIPTION)
values
("A", "ACTIVE"),
("I", "INACTIVE");

insert into ACCOUNTS (EMAIL_ADDRESS, PASSWORD)
values ("Singwai@mail.com" , "Password"),
 ("Haiqiang@mail.com" , "Password"),
 ("php@mail.com" , "Password"),
 ("Google@mail.com" , "Password");
 
insert into CATEGORIES (CATEGORY_NAME, CATEGORY_IMG)
values("FURNITURE", "http://tradeincampus.com/category_img/furniture-icon.jpg"), 
("OTHERS", "http://tradeincampus.com/category_img/furniture-icon.jpg"),
("SPORTS", "http://tradeincampus.com/category_img/furniture-icon.jpg"),
("OFFICE", "http://tradeincampus.com/category_img/furniture-icon.jpg"),
("BEAUTY", "http://tradeincampus.com/category_img/furniture-icon.jpg");

INSERT INTO ITEMS (ITEM_NAME, ITEM_DESCRIPTION, ITEM_CONDITION, ITEM_PRICE, ITEM_STATUS, ITEM_PICTURES, ACCOUNT_ID, CATEGORY_ID)
VALUES ("GOPRO", "VERY VERY GOOD CAMERA", "BRAND NEW", "100", "ACTIVE", "http://tradeincampus.com/category_img/furniture-icon.jpg", "1", "1");


