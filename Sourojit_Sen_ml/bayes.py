import numpy as np
import pandas as pd
from sklearn.preprocessing import StandardScaler
from sklearn.naive_bayes import GaussianNB
from sklearn.metrics import accuracy_score
from sklearn.model_selection import cross_val_score

#for co2
print("for CO2")

def assign_class_co2(arr,n):
 for i in range(0,n):
          if arr[i] <= 430:
           arr[i] = 0
          elif 430<arr[i]<=460:
           arr[i] = 1
          elif 460<arr[i]<=500:
           arr[i] = 2
          elif 500<arr[i]<=550:
           arr[i] = 3
          elif 550<arr[i]<=600:
           arr[i] = 4 
          else:
           arr[i] = 5

def bayesclassifier_for_co2(data_train,data_test,train_rows,test_rows):
 Data_train = data_train.drop(0,axis=1)
 Data_train1 = Data_train.drop(1,axis=1)
 Target_train = Data_train[1]
 Data_test = data_test.drop(0,axis=1)
 Data_test1 = Data_test.drop(1,axis=1)
 Target_test = Data_test[1]
 Data_train = Data_train.values
 Data_train1 = Data_train1[1:train_rows].values.astype(float)
 Data_test = Data_test.values
 Data_test1 = Data_test1[1:test_rows].values.astype(float)
 Target_train = Target_train[1:train_rows].values.astype(float)
 Target_test = Target_test[1:test_rows].values.astype(float)
 assign_class_co2(Target_train,train_rows-1)
 assign_class_co2(Target_test,test_rows-1)
 clf = GaussianNB()
 clf.fit(Data_train1,Target_train)
 predictions = clf.predict(Data_test1)
 score = accuracy_score(predictions,Target_test)
 print('Accuracy : ',score)

#for sensor_data_100
data_train1 = pd.read_csv("Time_Series_data/Training/CO2_100_fits_train.csv", header=None, engine="python")
data_test1 = pd.read_csv("Time_Series_data/Testing/CO2_100_fits.csv", header=None, engine="python")    
bayesclassifier_for_co2(data_train1,data_test1,len(data_train1),len(data_test1))

#for sensor_data_104
data_train2 = pd.read_csv("Time_Series_data/Training/CO2_104_fits_train.csv", header=None, engine="python")
data_test2 = pd.read_csv("Time_Series_data/Testing/CO2_104_fits.csv", header=None, engine="python")
bayesclassifier_for_co2(data_train2,data_test2,len(data_train2),len(data_test2))

#for sensor_data_106
data_train3 = pd.read_csv("Time_Series_data/Training/CO2_106_fits_train.csv", header=None, engine="python")
data_test3 = pd.read_csv("Time_Series_data/Testing/CO2_106_fits.csv", header=None, engine="python")
bayesclassifier_for_co2(data_train3,data_test3,len(data_train3),len(data_test3))

#for sensor_data_107
data_train4 = pd.read_csv("Time_Series_data/Training/CO2_107_fits_train.csv", header=None, engine="python")
data_test4 = pd.read_csv("Time_Series_data/Testing/CO2_107_fits.csv", header=None, engine="python")
bayesclassifier_for_co2(data_train4,data_test4,len(data_train4),len(data_test4))

#for sensor_data_108
data_train5 = pd.read_csv("Time_Series_data/Training/CO2_108_fits_train.csv", header=None, engine="python")
data_test5 = pd.read_csv("Time_Series_data/Testing/CO2_108_fits.csv", header=None, engine="python")
bayesclassifier_for_co2(data_train5,data_test5,len(data_train5),len(data_test5))

#for sensor_data_109
data_train6 = pd.read_csv("Time_Series_data/Training/CO2_109_fits_train.csv", header=None, engine="python")
data_test6 = pd.read_csv("Time_Series_data/Testing/CO2_109_fits.csv", header=None, engine="python")
bayesclassifier_for_co2(data_train6,data_test6,len(data_train6),len(data_test6))

#for sensor_data_110
data_train7 = pd.read_csv("Time_Series_data/Training/CO2_110_fits_train.csv", header=None, engine="python")
data_test7 = pd.read_csv("Time_Series_data/Testing/CO2_110_fits.csv", header=None, engine="python")
bayesclassifier_for_co2(data_train7,data_test7,len(data_train7),len(data_test7))

#for sensor_data_111
data_train8 = pd.read_csv("Time_Series_data/Training/CO2_111_fits_train.csv", header=None, engine="python")
data_test8 = pd.read_csv("Time_Series_data/Testing/CO2_111_fits.csv", header=None, engine="python")
bayesclassifier_for_co2(data_train8,data_test8,len(data_train8),len(data_test8))

#for sensor_data_115
data_train9 = pd.read_csv("Time_Series_data/Training/CO2_115_fits_train.csv", header=None, engine="python")
data_test9 = pd.read_csv("Time_Series_data/Testing/CO2_115_fits.csv", header=None, engine="python")
bayesclassifier_for_co2(data_train9,data_test9,len(data_train9),len(data_test9))


#for sensor_data_116
data_train10 = pd.read_csv("Time_Series_data/Training/CO2_116_fits_train.csv", header=None, engine="python")
data_test10 = pd.read_csv("Time_Series_data/Testing/CO2_116_fits.csv", header=None, engine="python")
bayesclassifier_for_co2(data_train10,data_test10,len(data_train10),len(data_test10))


#for sensor_data_117
data_train11 = pd.read_csv("Time_Series_data/Training/CO2_117_fits_train.csv", header=None, engine="python")
data_test11 = pd.read_csv("Time_Series_data/Testing/CO2_117_fits.csv", header=None, engine="python")
bayesclassifier_for_co2(data_train11,data_test11,len(data_train11),len(data_test11))


#for sensor_data_120
data_train12 = pd.read_csv("Time_Series_data/Training/CO2_120_fits_train.csv", header=None, engine="python")
data_test12 = pd.read_csv("Time_Series_data/Testing/CO2_120_fits.csv", header=None, engine="python")
bayesclassifier_for_co2(data_train12,data_test12,len(data_train12),len(data_test12))


#for sensor_data_121
data_train13 = pd.read_csv("Time_Series_data/Training/CO2_121_fits_train.csv", header=None, engine="python")
data_test13 = pd.read_csv("Time_Series_data/Testing/CO2_121_fits.csv", header=None, engine="python")
bayesclassifier_for_co2(data_train13,data_test13,len(data_train13),len(data_test13))


#for sensor_data_122
data_train14 = pd.read_csv("Time_Series_data/Training/CO2_122_fits_train.csv", header=None, engine="python")
data_test14 = pd.read_csv("Time_Series_data/Testing/CO2_122_fits.csv", header=None, engine="python")
bayesclassifier_for_co2(data_train14,data_test14,len(data_train14),len(data_test14))


#for sensor_data_125
data_train15 = pd.read_csv("Time_Series_data/Training/CO2_125_fits_train.csv", header=None, engine="python")
data_test15 = pd.read_csv("Time_Series_data/Testing/CO2_125_fits.csv", header=None, engine="python")
bayesclassifier_for_co2(data_train15,data_test15,len(data_train15),len(data_test15))



#for CO
print("for co")
def assign_class_co(arr,n):
 for i in range(0,n):
          if arr[i] <= 100:
           arr[i] = 0
          elif 100<arr[i]<=200:
           arr[i] = 1
          elif 200<arr[i]<=250:
           arr[i] = 2
          elif 250<arr[i]<=300:
           arr[i] = 3
          elif 300<arr[i]<=1000:
           arr[i] = 4 
          else:
           arr[i] = 5

def bayesclassifier_for_co(data_train,data_test,train_rows,test_rows):
 Data_train = data_train.drop(0,axis=1)
 Data_train1 = Data_train.drop(1,axis=1)
 Target_train = Data_train[1]
 Data_test = data_test.drop(0,axis=1)
 Data_test1 = Data_test.drop(1,axis=1)
 Target_test = Data_test[1]
 Data_train = Data_train.values
 Data_train1 = Data_train1[1:train_rows].values.astype(float)
 Data_test = Data_test.values
 Data_test1 = Data_test1[1:test_rows].values.astype(float)
 Target_train = Target_train[1:train_rows].values.astype(float)
 Target_test = Target_test[1:test_rows].values.astype(float)
 assign_class_co(Target_train,train_rows-1)
 assign_class_co(Target_test,test_rows-1)
 clf = GaussianNB()
 clf.fit(Data_train1,Target_train)
 predictions = clf.predict(Data_test1)
 score = accuracy_score(predictions,Target_test)
 print('Accuracy : ',score)

#for sensor_data_100
data_train1 = pd.read_csv("Time_Series_data/Training/CO_100_fits_train.csv", header=None, engine="python")
data_test1 = pd.read_csv("Time_Series_data/Testing/CO_100_fits.csv", header=None, engine="python")    
bayesclassifier_for_co(data_train1,data_test1,len(data_train1),len(data_test1))

#for sensor_data_104
data_train2 = pd.read_csv("Time_Series_data/Training/CO_104_fits_train.csv", header=None, engine="python")
data_test2 = pd.read_csv("Time_Series_data/Testing/CO_104_fits.csv", header=None, engine="python")
bayesclassifier_for_co(data_train2,data_test2,len(data_train2),len(data_test2))

#for sensor_data_106
data_train3 = pd.read_csv("Time_Series_data/Training/CO_106_fits_train.csv", header=None, engine="python")
data_test3 = pd.read_csv("Time_Series_data/Testing/CO_106_fits.csv", header=None, engine="python")
bayesclassifier_for_co(data_train3,data_test3,len(data_train3),len(data_test3))

#for sensor_data_107
data_train4 = pd.read_csv("Time_Series_data/Training/CO_107_fits_train.csv", header=None, engine="python")
data_test4 = pd.read_csv("Time_Series_data/Testing/CO_107_fits.csv", header=None, engine="python")
bayesclassifier_for_co(data_train4,data_test4,len(data_train4),len(data_test4))

#for sensor_data_108
data_train5 = pd.read_csv("Time_Series_data/Training/CO_108_fits_train.csv", header=None, engine="python")
data_test5 = pd.read_csv("Time_Series_data/Testing/CO_108_fits.csv", header=None, engine="python")
bayesclassifier_for_co(data_train5,data_test5,len(data_train5),len(data_test5))

#for sensor_data_109
data_train6 = pd.read_csv("Time_Series_data/Training/CO_109_fits_train.csv", header=None, engine="python")
data_test6 = pd.read_csv("Time_Series_data/Testing/CO_109_fits.csv", header=None, engine="python")
bayesclassifier_for_co(data_train6,data_test6,len(data_train6),len(data_test6))

#for sensor_data_110
data_train7 = pd.read_csv("Time_Series_data/Training/CO_110_fits_train.csv", header=None, engine="python")
data_test7 = pd.read_csv("Time_Series_data/Testing/CO_110_fits.csv", header=None, engine="python")
bayesclassifier_for_co(data_train7,data_test7,len(data_train7),len(data_test7))

#for sensor_data_111
data_train8 = pd.read_csv("Time_Series_data/Training/CO_111_fits_train.csv", header=None, engine="python")
data_test8 = pd.read_csv("Time_Series_data/Testing/CO_111_fits.csv", header=None, engine="python")
bayesclassifier_for_co(data_train8,data_test8,len(data_train8),len(data_test8))

#for sensor_data_114
data_train9 = pd.read_csv("Time_Series_data/Training/CO_114_fits_train.csv", header=None, engine="python")
data_test9 = pd.read_csv("Time_Series_data/Testing/CO_114_fits.csv", header=None, engine="python")
bayesclassifier_for_co(data_train9,data_test9,len(data_train9),len(data_test9))


#for sensor_data_115
data_train10 = pd.read_csv("Time_Series_data/Training/CO_115_fits_train.csv", header=None, engine="python")
data_test10 = pd.read_csv("Time_Series_data/Testing/CO_115_fits.csv", header=None, engine="python")
bayesclassifier_for_co(data_train10,data_test10,len(data_train10),len(data_test10))

#for sensor_data_116
data_train11 = pd.read_csv("Time_Series_data/Training/CO_116_fits_train.csv", header=None, engine="python")
data_test11 = pd.read_csv("Time_Series_data/Testing/CO_116_fits.csv", header=None, engine="python")
bayesclassifier_for_co(data_train11,data_test11,len(data_train11),len(data_test11))


#for sensor_data_117
data_train12 = pd.read_csv("Time_Series_data/Training/CO_117_fits_train.csv", header=None, engine="python")
data_test12 = pd.read_csv("Time_Series_data/Testing/CO_117_fits.csv", header=None, engine="python")
bayesclassifier_for_co(data_train12,data_test12,len(data_train12),len(data_test12))


#for sensor_data_120
data_train13 = pd.read_csv("Time_Series_data/Training/CO_120_fits_train.csv", header=None, engine="python")
data_test13 = pd.read_csv("Time_Series_data/Testing/CO_120_fits.csv", header=None, engine="python")
bayesclassifier_for_co(data_train13,data_test13,len(data_train13),len(data_test13))


#for sensor_data_121
data_train14 = pd.read_csv("Time_Series_data/Training/CO_121_fits_train.csv", header=None, engine="python")
data_test14 = pd.read_csv("Time_Series_data/Testing/CO_121_fits.csv", header=None, engine="python")
bayesclassifier_for_co(data_train14,data_test14,len(data_train14),len(data_test14))


#for sensor_data_122
data_train15 = pd.read_csv("Time_Series_data/Training/CO_122_fits_train.csv", header=None, engine="python")
data_test15 = pd.read_csv("Time_Series_data/Testing/CO_122_fits.csv", header=None, engine="python")
bayesclassifier_for_co(data_train15,data_test15,len(data_train15),len(data_test15))


#for sensor_data_125
data_train16 = pd.read_csv("Time_Series_data/Training/CO_125_fits_train.csv", header=None, engine="python")
data_test16 = pd.read_csv("Time_Series_data/Testing/CO_125_fits.csv", header=None, engine="python")
bayesclassifier_for_co(data_train16,data_test16,len(data_train16),len(data_test16))



#for no2
print("for no2")
def assign_class_no2(arr,n):
 for i in range(0,n):
          if arr[i] <= 1:
           arr[i] = 0
          elif 1<arr[i]<=10:
           arr[i] = 1
          elif 10<arr[i]<=20:
           arr[i] = 2
          elif 20<arr[i]<=30:
           arr[i] = 3
          elif 30<arr[i]<=40:
           arr[i] = 4 
          else:
           arr[i] = 5

def bayesclassifier_for_no2(data_train,data_test,train_rows,test_rows):
 Data_train = data_train.drop(0,axis=1)
 Data_train1 = Data_train.drop(1,axis=1)
 Target_train = Data_train[1]
 Data_test = data_test.drop(0,axis=1)
 Data_test1 = Data_test.drop(1,axis=1)
 Target_test = Data_test[1]
 Data_train = Data_train.values
 Data_train1 = Data_train1[1:train_rows].values.astype(float)
 Data_test = Data_test.values
 Data_test1 = Data_test1[1:test_rows].values.astype(float)
 Target_train = Target_train[1:train_rows].values.astype(float)
 Target_test = Target_test[1:test_rows].values.astype(float)
 assign_class_no2(Target_train,train_rows-1)
 assign_class_no2(Target_test,test_rows-1)
 clf = GaussianNB()
 clf.fit(Data_train1,Target_train)
 predictions = clf.predict(Data_test1)
 score = accuracy_score(predictions,Target_test)
 print('Accuracy : ',score)

#for sensor_data_100
data_train1 = pd.read_csv("Time_Series_data/Training/NO2_100_fits_train.csv", header=None, engine="python")
data_test1 = pd.read_csv("Time_Series_data/Testing/NO2_100_fits.csv", header=None, engine="python")    
bayesclassifier_for_no2(data_train1,data_test1,len(data_train1),len(data_test1))

#for sensor_data_106
data_train2 = pd.read_csv("Time_Series_data/Training/NO2_106_fits_train.csv", header=None, engine="python")
data_test2 = pd.read_csv("Time_Series_data/Testing/NO2_106_fits.csv", header=None, engine="python")
bayesclassifier_for_no2(data_train2,data_test2,len(data_train2),len(data_test2))

#for sensor_data_107
data_train3 = pd.read_csv("Time_Series_data/Training/NO2_107_fits_train.csv", header=None, engine="python")
data_test3 = pd.read_csv("Time_Series_data/Testing/NO2_107_fits.csv", header=None, engine="python")
bayesclassifier_for_no2(data_train3,data_test3,len(data_train3),len(data_test3))

#for sensor_data_108
data_train4 = pd.read_csv("Time_Series_data/Training/NO2_108_fits_train.csv", header=None, engine="python")
data_test4 = pd.read_csv("Time_Series_data/Testing/NO2_108_fits.csv", header=None, engine="python")
bayesclassifier_for_no2(data_train4,data_test4,len(data_train4),len(data_test4))

#for sensor_data_109
data_train5 = pd.read_csv("Time_Series_data/Training/CO2_109_fits_train.csv", header=None, engine="python")
data_test5 = pd.read_csv("Time_Series_data/Testing/CO2_109_fits.csv", header=None, engine="python")
bayesclassifier_for_co2(data_train5,data_test5,len(data_train5),len(data_test5))

#for sensor_data_110
data_train6 = pd.read_csv("Time_Series_data/Training/NO2_110_fits_train.csv", header=None, engine="python")
data_test6 = pd.read_csv("Time_Series_data/Testing/NO2_110_fits.csv", header=None, engine="python")
bayesclassifier_for_no2(data_train6,data_test6,len(data_train6),len(data_test6))

#for sensor_data_117
data_train7 = pd.read_csv("Time_Series_data/Training/NO2_117_fits_train.csv", header=None, engine="python")
data_test7 = pd.read_csv("Time_Series_data/Testing/NO2_117_fits.csv", header=None, engine="python")
bayesclassifier_for_no2(data_train7,data_test7,len(data_train7),len(data_test7))

#for sensor_data_120
data_train8 = pd.read_csv("Time_Series_data/Training/NO2_120_fits_train.csv", header=None, engine="python")
data_test8 = pd.read_csv("Time_Series_data/Testing/NO2_120_fits.csv", header=None, engine="python")
bayesclassifier_for_no2(data_train8,data_test8,len(data_train8),len(data_test8))


#for sensor_data_121
data_train9 = pd.read_csv("Time_Series_data/Training/NO2_121_fits_train.csv", header=None, engine="python")
data_test9 = pd.read_csv("Time_Series_data/Testing/NO2_121_fits.csv", header=None, engine="python")
bayesclassifier_for_no2(data_train9,data_test9,len(data_train9),len(data_test9))


#for sensor_data_122
data_train10 = pd.read_csv("Time_Series_data/Training/NO2_122_fits_train.csv", header=None, engine="python")
data_test10 = pd.read_csv("Time_Series_data/Testing/NO2_122_fits.csv", header=None, engine="python")
bayesclassifier_for_no2(data_train10,data_test10,len(data_train10),len(data_test10))


#for O3
print("for O3")
def assign_class_o3(arr,n):
 for i in range(0,n):
          if arr[i] <= 1:
           arr[i] = 0
          elif 1<arr[i]<=20:
           arr[i] = 1
          elif 20<arr[i]<=80:
           arr[i] = 2
          elif 80<arr[i]<=400:
           arr[i] = 3
          elif 400<arr[i]<=600:
           arr[i] = 4
          else:
           arr[i] = 5

def bayesclassifier_for_o3(data_train,data_test,train_rows,test_rows):
 Data_train = data_train.drop(0,axis=1)
 Data_train1 = Data_train.drop(1,axis=1)
 Target_train = Data_train[1]
 Data_test = data_test.drop(0,axis=1)
 Data_test1 = Data_test.drop(1,axis=1)
 Target_test = Data_test[1]
 Data_train = Data_train.values
 Data_train1 = Data_train1[1:train_rows].values.astype(float)
 Data_test = Data_test.values
 Data_test1 = Data_test1[1:test_rows].values.astype(float)
 Target_train = Target_train[1:train_rows].values.astype(float)
 Target_test = Target_test[1:test_rows].values.astype(float)
 assign_class_o3(Target_train,train_rows-1)
 assign_class_o3(Target_test,test_rows-1)
 clf = GaussianNB()
 clf.fit(Data_train1,Target_train)
 predictions = clf.predict(Data_test1)
 score = accuracy_score(predictions,Target_test)
 print('Accuracy : ',score)

#for sensor_data_100
data_train1 = pd.read_csv("Time_Series_data/Training/O3_100_fits_train.csv", header=None, engine="python")
data_test1 = pd.read_csv("Time_Series_data/Testing/O3_100_fits.csv", header=None, engine="python")
bayesclassifier_for_o3(data_train1,data_test1,len(data_train1),len(data_test1))

#for sensor_data_104
data_train2 = pd.read_csv("Time_Series_data/Training/O3_104_fits_train.csv", header=None, engine="python")
data_test2 = pd.read_csv("Time_Series_data/Testing/O3_104_fits.csv", header=None, engine="python")
bayesclassifier_for_o3(data_train2,data_test2,len(data_train2),len(data_test2))

#for sensor_data_106
data_train3 = pd.read_csv("Time_Series_data/Training/O3_106_fits_train.csv", header=None, engine="python")
data_test3 = pd.read_csv("Time_Series_data/Testing/O3_106_fits.csv", header=None, engine="python")
bayesclassifier_for_o3(data_train3,data_test3,len(data_train3),len(data_test3))

#for sensor_data_107
data_train4 = pd.read_csv("Time_Series_data/Training/O3_107_fits_train.csv", header=None, engine="python")
data_test4 = pd.read_csv("Time_Series_data/Testing/O3_107_fits.csv", header=None, engine="python")
bayesclassifier_for_o3(data_train4,data_test4,len(data_train4),len(data_test4))

#for sensor_data_108
data_train5 = pd.read_csv("Time_Series_data/Training/O3_108_fits_train.csv", header=None, engine="python")
data_test5 = pd.read_csv("Time_Series_data/Testing/O3_108_fits.csv", header=None, engine="python")
bayesclassifier_for_o3(data_train5,data_test5,len(data_train5),len(data_test5))

#for sensor_data_109
data_train6 = pd.read_csv("Time_Series_data/Training/O3_109_fits_train.csv", header=None, engine="python")
data_test6 = pd.read_csv("Time_Series_data/Testing/O3_109_fits.csv", header=None, engine="python")
bayesclassifier_for_o3(data_train6,data_test6,len(data_train6),len(data_test6))

#for sensor_data_110
data_train7 = pd.read_csv("Time_Series_data/Training/O3_110_fits_train.csv", header=None, engine="python")
data_test7 = pd.read_csv("Time_Series_data/Testing/O3_110_fits.csv", header=None, engine="python")
bayesclassifier_for_o3(data_train7,data_test7,len(data_train7),len(data_test7))

#for sensor_data_111
data_train8 = pd.read_csv("Time_Series_data/Training/O3_111_fits_train.csv", header=None, engine="python")
data_test8 = pd.read_csv("Time_Series_data/Testing/O3_111_fits.csv", header=None, engine="python")
bayesclassifier_for_o3(data_train8,data_test8,len(data_train8),len(data_test8))

#for sensor_data_114
data_train9 = pd.read_csv("Time_Series_data/Training/O3_114_fits_train.csv", header=None, engine="python")
data_test9 = pd.read_csv("Time_Series_data/Testing/O3_114_fits.csv", header=None, engine="python")
bayesclassifier_for_o3(data_train9,data_test9,len(data_train9),len(data_test9))

#for sensor_data_115
data_train10 = pd.read_csv("Time_Series_data/Training/O3_115_fits_train.csv", header=None, engine="python")
data_test10 = pd.read_csv("Time_Series_data/Testing/O3_115_fits.csv", header=None, engine="python")
bayesclassifier_for_o3(data_train10,data_test10,len(data_train10),len(data_test10))


#for sensor_data_116
data_train11 = pd.read_csv("Time_Series_data/Training/O3_116_fits_train.csv", header=None, engine="python")
data_test11 = pd.read_csv("Time_Series_data/Testing/O3_116_fits.csv", header=None, engine="python")
bayesclassifier_for_o3(data_train11,data_test11,len(data_train11),len(data_test11))


#for sensor_data_117
data_train12 = pd.read_csv("Time_Series_data/Training/O3_117_fits_train.csv", header=None, engine="python")
data_test12 = pd.read_csv("Time_Series_data/Testing/O3_117_fits.csv", header=None, engine="python")
bayesclassifier_for_o3(data_train12,data_test12,len(data_train12),len(data_test12))


#for sensor_data_120
data_train13 = pd.read_csv("Time_Series_data/Training/O3_120_fits_train.csv", header=None, engine="python")
data_test13 = pd.read_csv("Time_Series_data/Testing/O3_120_fits.csv", header=None, engine="python")
bayesclassifier_for_o3(data_train13,data_test13,len(data_train13),len(data_test13))


#for sensor_data_121
data_train14 = pd.read_csv("Time_Series_data/Training/O3_121_fits_train.csv", header=None, engine="python")
data_test14 = pd.read_csv("Time_Series_data/Testing/O3_121_fits.csv", header=None, engine="python")
bayesclassifier_for_o3(data_train14,data_test14,len(data_train14),len(data_test14))


#for sensor_data_122
data_train15 = pd.read_csv("Time_Series_data/Training/O3_122_fits_train.csv", header=None, engine="python")
data_test15 = pd.read_csv("Time_Series_data/Testing/O3_122_fits.csv", header=None, engine="python")
bayesclassifier_for_o3(data_train15,data_test15,len(data_train15),len(data_test15))


#for sensor_data_125
data_train16 = pd.read_csv("Time_Series_data/Training/O3_125_fits_train.csv", header=None, engine="python")
data_test16 = pd.read_csv("Time_Series_data/Testing/O3_125_fits.csv", header=None, engine="python")
bayesclassifier_for_o3(data_train16,data_test16,len(data_train16),len(data_test16))


