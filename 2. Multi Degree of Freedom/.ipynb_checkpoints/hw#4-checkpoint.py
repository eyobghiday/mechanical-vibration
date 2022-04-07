# -*- coding: utf-8 -*-
"""
Created on Tue Mar  8 09:52:00 2022

@author: Jese Ramirez
"""

import numpy as np
from scipy.linalg import eigh
import matplotlib.pyplot as plt
# from matplotlib.pyplot import legend

# k1,k2,k3,k4,k5,k6 = 1.,1.,1.,1.,1.,1.
# m1,m2,m3,m4,m5 = 1.,1.,1.,1.,1.
m=10
k=1


K = np.array([[k+k,-k,0,0,0],[-k,k+k,-k,0,0],[0,-k,k+k,-k,0],[0,0,-k,k+k,-k],[0,0,0,-k,k+k]])
M = np.array([[m,0,0,0,0],[0,m,0,0,0],[0,0,m,0,0],[0,0,0,m,0],[0,0,0,0,m]])
eigv,eigvec = eigh(K,M)
print('\u03BB =', eigv)
print(eigvec)

plt.plot(eigv,eigvec,'*-')
plt.ylabel('Eigenvectors')
plt.xlabel('Eigenvalues')
plt.suptitle('Mode Shapes')
plt.legend(['First Mode', 'Second Mode','Third Mode', 'Fourth Mode','Fifth Mode'],loc="lower center",bbox_to_anchor=(1.2, 0), ncol= 1)
# plt.legend(loc="lower center", bbox_to_anchor=(0.1, -0.15), ncol= 2)


plt.show()


#%%
k = 1
m1,m2,m3,m4,m5 = 10.,10.,5.,2.,2.



K1 = np.array([[k+k,-k,0,0,0],[-k,k+k,-k,0,0],[0,-k,k+k,-k,0],[0,0,-k,k+k,-k],[0,0,0,-k,k+k]])
M1 = np.array([[m1,0,0,0,0],[0,m2,0,0,0],[0,0,m3,0,0],[0,0,0,m4,0],[0,0,0,0,m5]])
eigv1,eigvec1 = eigh(K1,M1)
print('\u03BB =', eigv1)
print(eigvec1)

plt.plot(eigv1,eigvec1,'*-')
plt.ylabel('Eigenvectors')
plt.xlabel('Eigenvalues')
plt.suptitle('Mode Shapes')
plt.legend(['First Mode', 'Second Mode','Third Mode', 'Fourth Mode','Fifth Mode'],loc="lower center",bbox_to_anchor=(1.2, 0), ncol= 1)
# plt.legend(loc="lower center", bbox_to_anchor=(0.1, -0.15), ncol= 2)

#%%

# x=(int(eigv[0:5]))
# u=np.transpose(x)
x = np.array([0.0267949,0.1,0.2,0.3,0.373205])
u = x.transpose()







