s = "WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWBWWWWWWWWWWWWWW"
cl = s[0]
os = ""
count = 0
for i in s:
    if i == cl:
        count+=1
    else:
        os += str(count) + cl
        cl = i
        count = 1
print(os)