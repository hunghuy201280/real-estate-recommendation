

from repositories import mongo_repository
import pandas as pd
import traceback
import sys
import numpy as np
from models.trainer import Trainer
def run(pointDf):
    try:
      mongo_repository.clear_top_prop()
      top_prop=pointDf.groupby("item_id")["points"].count().reset_index(name="count")
      top_prop=top_prop.sort_values("count",ascending=False)
      top_prop_ids=list(top_prop[:30]["item_id"].values)
      
      mongo_repository.save_top_prop({
        "top_items":top_prop_ids,
      })
    except:
        print("Fail to recommend houses", sys.exc_info()[0])
        traceback.print_exc()
