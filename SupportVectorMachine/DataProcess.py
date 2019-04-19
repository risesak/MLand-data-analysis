import numpy as np
import pandas as pd
import csv
from numpy import array

from cvxopt import matrix as cvxopt_matrix
from cvxopt import solvers as cvxopt_solvers

df = pd.read_csv('foo11.csv')

npa=np.array(df,dtype=np.float_)
np.random.shuffle(npa)
train,test = npa[:160,:],npa[160:,:]

X=train[:,:29]
Y=train[:,29]

Yexpand=np.tile(Y,(29,1))

#Yexpandm=Yexpand.reshape(160,29)
Yexpandm=np.transpose(Yexpand)

Xdash=X*Yexpandm

H=Xdash.dot(np.transpose(Xdash))

#my_def=pd.DataFrame(H)
#my_df.to_csv('H.csv', index=False) 

m,n = X.shape
#df = pd.read_csv('H.csv')
print(H)
#H=np.array(df,dtype=np.float_)
P = cvxopt_matrix(H)
q = cvxopt_matrix(-np.ones((m, 1)))
G = cvxopt_matrix(-np.eye(m))
h = cvxopt_matrix(np.zeros(m))
A = cvxopt_matrix(Y.reshape(1, 160))
b = cvxopt_matrix(np.zeros(1))


sol = cvxopt_solvers.qp(P, q, G, h, A, b)
alphas = np.array(sol['x'])

wp=np.transpose(X).dot(alphas*(np.transpose(Y)))
w=wp.sum(axis=1)

S = (alphas > 1e-4).flatten()
b = Y[S] - np.dot(X[S], w)
b=b[0]









