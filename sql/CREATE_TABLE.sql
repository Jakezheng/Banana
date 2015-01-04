--DROP DATABASE IF EXISTS Mango;
--CREATE DATABASE Mango;
USE Mango;

DROP TABLE IF EXISTS ACCOUNTS;
CREATE TABLE ACCOUNTS
(
ACCOUNT_ID int NOT NULL AUTO_INCREMENT,
EMAIL_ADDRESS varchar(255) NOT NULL,
PASSWORD varchar(255) NOT NULL,
WechatID varchar(255) NOT NULL,
PRIMARY KEY (ACCOUNT_ID),
UNIQUE (EMAIL_ADDRESS)
); 

DROP TABLE IF EXISTS CATEGORIES;
CREATE TABLE CATEGORIES
(
CATEGORY_NAME varchar(255) NOT NULL,
CATEGORY_IMG varchar(255) NOT NULL,
CATEGORY_CMT varchar(255) NOT NULL,
PRIMARY KEY (CATEGORY_NAME),
UNIQUE (CATEGORY_NAME)
) CHARACTER SET = utf8; 


DROP TABLE IF EXISTS ITEMS;
CREATE TABLE ITEMS
(
//Singwai edit
//Add account id
ITEM_ID int NOT NULL AUTO_INCREMENT,
ITEM_NAME varchar(255) NOT NULL,
ITEM_DESCRIPTION varchar(255) NOT NULL,
ITEM_CONDITION varchar(255) NOT NULL,
ITEM_LOCATION varchar(255) NOT NULL,
ITEM_PRICE varchar(255) NOT NULL,
ITEM_STATUS varchar(255) NOT NULL,
ITEM_PICTURES varchar(255) NOT NULL,
ITEM_POSTDATE DATE NOT NULL,
ACCOUNT_ID int NOT NULL,
CATEGORY_NAME varchar(255) NOT NULL,
PRIMARY KEY (ITEM_ID),
FOREIGN KEY (ACCOUNT_ID) REFERENCES ACCOUNTS(ACCOUNT_ID),
FOREIGN KEY (CATEGORY_NAME) REFERENCES CATEGORIES(CATEGORY_NAME)
) CHARACTER SET = utf8;

insert into ACCOUNTS (EMAIL_ADDRESS, PASSWORD)
values ("Singwai@mail.com" , "Password"),
 ("Haiqiang@mail.com" , "Password"),
 ("php@mail.com" , "Password"),
 ("Google@mail.com" , "Password");
 
insert into CATEGORIES (NAME,IMG)
values ("家具"，"http://tradeincampus.com/category_img/furniture-icon.jpg"),("电子产品","http://tradeincampus.com/category_img/electronic-icon.jpg"),("服饰","http://tradeincampus.com/category_img/clothing-icon.jpg"),("书本","http://tradeincampus.com/category_img/Book-icons.jpg"),("运动产品","http://tradeincampus.com/category_img/sports-icons.jpg"),("其他","http://tradeincampus.com/category_img/others-icon.png");







