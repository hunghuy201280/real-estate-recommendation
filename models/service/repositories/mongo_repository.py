import pymongo

from defines.constant import *

myClient = pymongo.MongoClient(MONGO_URI)
myDB = myClient[MONGO_DB]
recommend_collection = myDB[RECOMMENDATION_COLLECTION]
top_house_collection = myDB[TOP_HOUSE_COLLECTION]
house_collection = myDB[HOUSE_COLLECTION]
event_log_collection = myDB[EVENT_LOG_COLLECTION]



def clear_top_prop():
  top_house_collection.delete_many({})

def save_top_prop(document):
    if document is not None:
        top_house_collection.insert_one(document)
        print(f"inserted {document}")

def save_recommedations(documents):
    if documents is not None:
        recommend_collection.insert_many(documents)
        print(f"inserted {documents}")

def clear_recommendation():
  recommend_collection.delete_many({})

def getAllHouses():
    return house_collection.find()

def getAllEventLogs():
    return event_log_collection.find()
