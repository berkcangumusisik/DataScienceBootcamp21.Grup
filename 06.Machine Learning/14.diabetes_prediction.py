################################################
# End-to-End Diabetes Machine Learning Pipeline 
################################################

import joblib
import pandas as pd
from pathlib import Path
base_dir = Path(__file__).resolve().parent
df = pd.read_csv(base_dir / "datasets" / "diabetes.csv")

random_user = df.sample(1, random_state=45)

new_model = joblib.load(base_dir / "voting_clf.pkl")

new_model.predict(random_user)

from diabetes_pipeline import diabetes_data_prep

X, y = diabetes_data_prep(df)

random_user = X.sample(1, random_state=50)

new_model = joblib.load("voting_clf.pkl")

new_model.predict(random_user)
