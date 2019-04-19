import csv
import numpy as np
import pandas as pd


df = pd.read_csv('creditcard.csv')
#df = pd.DataFrame(data)


df_fraud = df[df['Class'] == 1]
df_notfraud = df[df['Class'] == 0]
df_fraud = df_fraud.drop(['Time', 'Class'],axis=1)
df_fraud = df_fraud.drop(['Time', 'Class'],axis=1)

df_fraud200=df_fraud[0:200]
one=np.ones((200,1))
df_fraud200=np.concatenate((df_fraud200,one),axis=1)

df_notfraud200=df_fraud[0:200]
minusone=np.full((200,1),-1)
df_notfraud200=np.concatenate((df_notfraud200,minusone),axis=1)



npfraud=np.array(df_fraud200)
npnotfraud=np.array(df_notfraud200)

resulant=np.concatenate((npfraud,npnotfraud),axis=0)

my_df.to_csv('foo.csv', index=False) 

