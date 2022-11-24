

from repositories import mongo_repository
import pandas as pd
import traceback
import sys
from models.trainer import Trainer
def recommend():
    try:
       mongo_repository.clear_recommendation()
       houses=mongo_repository.getAllHouses()
       events=mongo_repository.getAllEventLogs()
       trainer=Trainer(houses,events)
       trainer.fit()

       for user_id in trainer.pointDf["user_id"].values:
            suggested_item_ids=trainer.mf_get_top_items(user_id)
            document={
                    "user_id":"006842a9-8da3-4e9a-9a23-68535983aee0",
                    "house_ids":list(suggested_item_ids.values)
                }
            
            mongo_repository.save_recommedation(document)
     
    except:
        print("Fail to crawl oil price global", sys.exc_info()[0])
        traceback.print_exc()
