import numpy as np
import pandas as pd
from sklearn.preprocessing import StandardScaler
from sklearn.linear_model import LinearRegression
from sklearn.metrics import r2_score

data_train = pd.read_csv("Time_Series_data/Training/CO2_100_fits_train.csv", header=None, engine="python")
data_test = pd.read_csv("Time_Series_data/Testing/CO2_100_fits.csv", header=None, engine="python")

Data_train = data_train.drop(0,axis=1)
Data_train1 = Data_train.drop(1,axis=1)
Target_train = Data_train[1]

Data_test = data_test.drop(0,axis=1)
Data_test1 = Data_test.drop(1,axis=1)
Target_test = Data_test[1]

Data_train = Data_train.values
Data_train1 = Data_train1[1:2689].values.astype(float)
Data_test = Data_test.values
Data_test1 = Data_test1[1:2689].values.astype(float)
Target_train = Target_train[1:2689].values.astype(float)
Target_test = Target_test[1:2689].values.astype(float)
print(Target_test)
linear_model = LinearRegression().fit(Data_train1,Target_train)
predictions = linear_model.predict(Data_test1)
print(predictions)
r2_error = r2_score(predictions,Target_test,multioutput="uniform_average")
print('Accuracy :',r2_error)


