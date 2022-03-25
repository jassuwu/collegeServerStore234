#prime nos prgm
n = int(input("Enter the upper limit"))
for i in range(2,n+1):
    f = 0
    for j in range(2,i):
        if i == 2 or i%j == 0:
            f = 1
    if f == 0:
        print(i)