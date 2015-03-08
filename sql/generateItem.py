import sys
from random import randint

imageUrl = ["http://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0CAcQjRw&url=http%3A%2F%2Ffun-time.website%2Fcute-blue-cartoon-penguin%2F&ei=np37VO-fL4aYNs2ghJAD&bvm=bv.87611401,d.eXY&psig=AFQjCNE1Kr90IvpD9bUa4XQPZ4RWgV_JKA&ust=1425862426981696",
			"http://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0CAcQjRw&url=http%3A%2F%2Fwww.blindenreport.de%2Fwp-content%2Fcss%2Fcartoon-globe.html&ei=-Z37VMeLLMqMNpiygugL&bvm=bv.87611401,d.eXY&psig=AFQjCNE1Kr90IvpD9bUa4XQPZ4RWgV_JKA&ust=1425862426981696",
			"http://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0CAcQjRw&url=http%3A%2F%2Fwww.clipartpanda.com%2Fcategories%2Fdinosaur-cartoon&ei=CZ77VPDbO8GngwTlh4CQBQ&bvm=bv.87611401,d.eXY&psig=AFQjCNE1Kr90IvpD9bUa4XQPZ4RWgV_JKA&ust=1425862426981696",
			"http://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0CAcQjRw&url=http%3A%2F%2Fwww.wikihow.com%2FDraw-a-Cartoon-Penguin&ei=F577VJX8BIrEggTkuoTwAw&bvm=bv.87611401,d.eXY&psig=AFQjCNE1Kr90IvpD9bUa4XQPZ4RWgV_JKA&ust=1425862426981696",
			"http://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0CAcQjRw&url=http%3A%2F%2Fgraphicleftovers.com%2Fgraphic%2Fcartoon-powerful-eagle&ei=JZ77VMTEDo-INpSCgaAB&bvm=bv.87611401,d.eXY&psig=AFQjCNE1Kr90IvpD9bUa4XQPZ4RWgV_JKA&ust=1425862426981696"]

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
	account_rand = randint(1,10)
	itemName_rand = randint(0,4)
	itemCond_rand = randint(0,1)
	itemStatus_rand = randint(0,1)

	if i == 29:
		text_file.write("('" + itemName[itemName_rand] + "'," + "'FUCK'" + ",'" + itemCondition[itemCond_rand] + "'," + "'FLUSHING'" + ",'" + str(randint(0,100)) +"','" + itemStatus[itemStatus_rand] + "','" + imageUrl[imageRan] + "'," + str(account_rand) + "," + str(category) + ");")
		break		

	text_file.write("('" + itemName[itemName_rand] + "'," + "'FUCK'" + ",'" + itemCondition[itemCond_rand] + "'," + "'FLUSHING'" + ",'" + str(randint(0,100)) +"','" + itemStatus[itemStatus_rand] + "','" + imageUrl[imageRan] + "'," + str(account_rand) + "," + str(category) + "),\n")

text_file.close()

