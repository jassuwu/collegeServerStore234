# -*- coding: utf-8 -*-
"""
Created on Mon Mar  1 10:34:45 2021

@author: 20PW14
"""

l = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
n = input("Enter a string to check for pangram: ")
f = 0
for i in l:
    if i not in n.lower():
        print("Not a pangram")
        break
    else:
        f = 1
if f == 1:
    print("'Tis a pangram")