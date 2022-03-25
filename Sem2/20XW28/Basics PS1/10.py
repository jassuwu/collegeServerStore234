# -*- coding: utf-8 -*-
"""
Created on Mon Mar  1 10:05:46 2021

@author: 20PW14
"""

l = [1,4,2,1,6]
for i in range(len(l)):
    if (l[i] == 2 and l[i+1] == 2):
         print(True)
         break
else:
    print(False)
        