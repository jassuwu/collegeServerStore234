import random
pwd = ""
n = int(input("Enter the length of the password:"))
for i in range(0,n):
    pwd+=chr(random.randrange(32,127))
print(pwd)
