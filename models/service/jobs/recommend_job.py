

from repositories import mongo_repository
import pandas as pd
import traceback
import sys
import numpy as np
from jobs import find_top_items_job

from models.trainer import Trainer
def recommend():
    try:
       mongo_repository.clear_recommendation()
       houses=mongo_repository.getAllHouses()
       events=mongo_repository.getAllEventLogs()
    #    for house in houses:
    #     print(house)
       trainer=Trainer(houses,events)
       trainer.fit()
       find_top_items_job.run(trainer.pointDf)
       batch=[]
       unique_user_ids=np.unique(trainer.pointDf["user_id"].values)
       for user_id in unique_user_ids:
            suggested_item_ids=trainer.mf_get_top_items(user_id)
            document={
                    "user_id":user_id,
                    "house_ids":list(suggested_item_ids.values)
                }
            batch.append(document)
            if len(batch)==100:
                mongo_repository.save_recommedations(batch)
                batch=[]
        
     
    except:
        print("Fail to crawl oil price global", sys.exc_info()[0])
        traceback.print_exc()
