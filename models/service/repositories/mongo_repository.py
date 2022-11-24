import pymongo

from defines.constant import *

myClient = pymongo.MongoClient(MONGO_URI)
myDB = myClient[MONGO_DB]
recommend_collection = myDB[RECOMMENDATION_COLLECTION]
house_collection = myDB[HOUSE_COLLECTION]
event_log_collection = myDB[EVENT_LOG_COLLECTION]


def save_recommedation(document):
    if document is not None:
        recommend_collection.insert_one(document)
        print(f"inserted {document}")

def clear_recommendation():
  recommend_collection.delete_many({})

def getAllHouses():
    return house_collection.find()

def getAllEventLogs():
    return event_log_collection.find()
