
from models.matrix_factorization import MF
import pandas as pd
from sklearn.preprocessing import LabelEncoder, StandardScaler
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier 
from sklearn.metrics import classification_report
import numpy as np


class Trainer(object):
    def __init__(self,home_data,events_data):
        self.home_df=pd.DataFrame(home_data)
        self.events_df=pd.DataFrame(events_data)
        self.home_df.drop(columns=["_id"],inplace=True)
        self.events_df.drop(columns=["_id"],inplace=True)
        self.home_orig=self.home_df.copy()
        self.n_top_items=10
        print(f"Init trainer with houses {self.home_df.describe()}")
        print(f"Init trainer with events {self.events_df.describe()}")

    def preprocess(self):
        self.preprocess_events()
        self.assign_weight()
        self.remove_invalid_events()
        self.map_user_and_item_id()
        self.predict_room_qty()
        self.clean_data()
        self.transform_data()
    

    def mf_get_top_items(self,user_id):
        pred_points=np.array([],dtype="float64")
        for item_id in self.home_orig_cleaned.item_id.values:
            right_param=self.user_id_nums.get(user_id)
            left_param=self.item_id_nums.get(item_id)
            if left_param == None or right_param == None:
                continue
            pred=self.model.pred(left_param,right_param)
            pred_points=np.append(pred_points,pred)
        top_item_indexes=np.argpartition(pred_points, -self.n_top_items)[-self.n_top_items:]
        top_item_indexes_sorted=top_item_indexes[np.argsort(pred_points[top_item_indexes])][::-1]
        print("Top points: ",pred_points[top_item_indexes_sorted])
        return self.home_orig_cleaned.iloc[top_item_indexes_sorted].item_id

    def fit(self):
        self.preprocess()
        training_data=self.prepare_training_data()
        training_data=training_data[:,[1,0,2]]
        rate_train, rate_test = train_test_split(training_data, test_size=0.33, random_state=42)
        n_items=int(np.max(training_data[:, 1])) + 1
        n_users=int(np.max(training_data[:, 0])) + 1
        rs = MF(rate_train, K = 2, lam = 0.1, n_items=n_items,n_users=n_users,print_every = 2, learning_rate = 2, max_iter = 10, user_based = 0)
        rs.fit()
        RMSE = rs.evaluate_RMSE(rate_test)
        self.model=rs

    def prepare_training_data(self):
        result=self.point_matrix.copy()
        for index,row in list(enumerate(self.point_matrix)):
            point=row[2]
            user_id=row[0]
            item_id=row[1]
            result[index]=[self.user_id_nums[user_id],self.item_id_nums[item_id],point]       

        return result

    def get_items_point_by_user(self, user_id):
        y = self.point_matrix[:, 0]
        # get rows where user_id == input user_id
        filtered = self.point_matrix[np.where(y == user_id)]
        item_ids = filtered[:, 1].flatten()
        points = filtered[:, 2].flatten()
        return (item_ids, points)


    def map_user_and_item_id(self):
        self.point_matrix = self.pointDf.values
        self.user_id_nums={}
        self.user_id_nums_rev={}
        self.item_id_nums={}
        self.item_id_nums_rev={}
        for index,row in list(enumerate(self.point_matrix)):
            user_id=row[0]
            item_id=row[1]
            if self.user_id_nums.get(user_id) ==None:
                self.user_id_nums[user_id]=len(self.user_id_nums.keys())
                self.user_id_nums_rev[self.user_id_nums[user_id]]=user_id
            if self.item_id_nums.get(item_id) ==None:
                self.item_id_nums[item_id]=len(self.item_id_nums.keys())
                self.item_id_nums_rev[self.item_id_nums[item_id]]=item_id

    def remove_invalid_events(self):
        item_ids = np.unique(np.array(self.pointDf.item_id.values))
        orig_item_ids = self.home_orig["item_id"].values
        invalid_item_ids = [x for x in item_ids if x not in orig_item_ids]
        print(f"found {len(invalid_item_ids)} ids that are not in property data")
        self.pointDf.drop(self.pointDf[self.pointDf.item_id.isin(
            invalid_item_ids)].index, inplace=True)
        self.pointDf.reset_index(drop=True, inplace=True)

    def preprocess_events(self):
        unused_events = [
            "seen_in_list",
            "suggest-new",
            "suggest_similar",
            "sent_catalog_link",
            # "visit_request-canceled",
            # "visit-canceled",
            # "meeting_request-canceled",
            # "meeting-canceled"
        ]

        for event in unused_events:
            indexRows = self.events_df[self.events_df.event_type.str.contains(event)].index
            self.events_df.drop(indexRows, inplace=True)
            self.events_df.reset_index(drop=True, inplace=True)


    def assign_weight(self):
        # assign weight to events
        events_weight={
        "seen":20,
        "visit_request-new":30,
        "visit-new":30,
        "visit-unsuccess":-10,
        "visit-success":50,
        "meeting_request-new":70,
        "meeting-new":70,
        "meeting-unsuccess":70,
        "meeting-success":100,
        "deal-success":100,
        "visit_request-canceled":-10,
        "visit-canceled":-15,
        "meeting_request-canceled":-30,
        "meeting-canceled":-40,
        }
        users_items_points={}

        for _, activity in self.events_df.iterrows():
            user_id=activity.user_id
            item_id=activity.item_id
            event_type=activity.event_type
            key=user_id+"-"+item_id
            if users_items_points.get(key)==None: 
                users_items_points[key]={
                "user_id": user_id,
                    "item_id":item_id,
                    "points":0
                }
            
            users_items_points[key]["points"]+=events_weight[event_type]
        
        self.pointDf= pd.DataFrame(users_items_points.values())




    def transform_data(self):
        cats = ['district_uuid', 'has_elevator', 'has_storage_area']
        for c in cats:
            le = LabelEncoder()
            self.home_df[c] = le.fit_transform(self.home_df[c].astype('str'))
        feats = [c for c in self.home_df.columns if c not in ['item_id']]

        self.home_orig_cleaned = self.home_df.copy()

        del self.home_df['item_id']

        self.home_df.fillna(self.home_df.mean(), inplace=True)
        rb = StandardScaler()
        self.home_df = rb.fit_transform(self.home_df)
        self.home_df = pd.DataFrame(self.home_df, columns=feats)
      

    def clean_data(self):
        self.home_df.drop(list(self.home_df[self.home_df.unit_area <=0].index), inplace=True)
        self.home_df.reset_index(drop=True, inplace=True)
    
    def predict_room_qty(self):
        rqty_train_home=self.home_df.copy()
        rqty_train_home=rqty_train_home[rqty_train_home["unit_area"].notna()]
        rqty_train_home=rqty_train_home[rqty_train_home["room_qty"].notna()]
        data = rqty_train_home[['room_qty','unit_area']]

        X = data[['unit_area']]
        y = data[['room_qty']]
        encoder =LabelEncoder()

        print(y)

        X_train, X_test, y_train, y_test = train_test_split(X,y,test_size=0.3, random_state=42)

        y_test=encoder.fit_transform(y_test)

        y_train = encoder.fit_transform(y_train)

        model = DecisionTreeClassifier()
        model.fit(X_train,y_train)

        y_pred = model.predict(X_test)
        print(classification_report(y_pred,y_test))
        def predict_room(area : int):
            predicted_value = model.predict([[area]])
            result=int(encoder.inverse_transform(predicted_value)[0])
            print(f"predicted room qty {result}")
            return result
        """predict missing room_qty"""
        na_roomqty_index=np.where(self.home_df["room_qty"].isna())[0]

        for i in na_roomqty_index:
            it_unit_area=self.home_df.iloc[i]["unit_area"]
            if it_unit_area==None:
                continue
            self.home_df.at[i,"room_qty"]=predict_room(it_unit_area)

        
        


