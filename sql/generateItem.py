import sys
from random import randint

imageUrl = ["http://tradeincampus.com/item_img/item1.png",
			"http://tradeincampus.com/item_img/item2.jpg",
			"http://tradeincampus.com/item_img/item3.jpg",
			"http://tradeincampus.com/item_img/item4.jpg",
			"http://tradeincampus.com/item_img/item5.jpg",
			"http://tradeincampus.com/item_img/item6.jpg",
			"http://tradeincampus.com/item_img/item7.jpg"]

itemName = ["a","b","c","d","e"]

itemCondition = ["OLD", "NEW"]

itemStatus = ["SOLD", "ACTIVE"]

print("Creating new file")

text_file = open("ItemData.sql", 'w')

text_file.write("USE Mango;\n")

text_file.write("insert into ITEMS (ITEM_NAME, ITEM_DESCRIPTION, ITEM_CONDITION, ITEM_LOCATION, ITEM_PRICE, ITEM_STATUS, ITEM_PICTURES, ACCOUNT_ID, CATEGORY_ID)\nvalues\n")

for i in range(0,30):
	category = randint(1,5)
	imageRan = randint(0,4)
	account_rand = randint(7,20)
	itemName_rand = randint(0,4)
	itemCond_rand = randint(0,1)
	itemStatus_rand = randint(0,1)

	if i == 29:
		text_file.write("('" + itemName[itemName_rand] + "'," + "'FUCK'" + ",'" + itemCondition[itemCond_rand] + "'," + "'FLUSHING'" + ",'" + str(randint(0,100)) +"','" + itemStatus[itemStatus_rand] + "','" + imageUrl[imageRan] + "'," + str(account_rand) + "," + str(category) + ");")
		break		

	text_file.write("('" + itemName[itemName_rand] + "'," + "'FUCK'" + ",'" + itemCondition[itemCond_rand] + "'," + "'FLUSHING'" + ",'" + str(randint(0,100)) +"','" + itemStatus[itemStatus_rand] + "','" + imageUrl[imageRan] + "'," + str(account_rand) + "," + str(category) + "),\n")

text_file.close()

