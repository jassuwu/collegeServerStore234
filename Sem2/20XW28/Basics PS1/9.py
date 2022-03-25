# -*- coding: utf-8 -*-
"""
Created on Mon Mar  1 10:18:33 2021

@author: 20PW14
"""

l  = [ 1,2,3,4,5]
l.remove(max(l))
l.remove(min(l))
print(sum(l)/len(l))