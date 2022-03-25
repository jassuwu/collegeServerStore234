# -*- coding: utf-8 -*-
"""
Created on Mon Mar  1 10:19:39 2021

@author: 20PW14
"""

n = int(input("Enter a number : "))
sq = str(n*n)
l = len(sq)
print(l)
if l%2 == 0:
    s = int(sq[:l//2]) + int(sq[l//2:])
else:
    s = int(sq[:l//2]) + int(sq[l//2 + 1 : ])
if s == n:
    print(n,"is a Keprekar number")
else:
    print(n,"isn't a Keprekar number")