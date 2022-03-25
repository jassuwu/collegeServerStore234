s = 'hello world and practice makes perfect and hello world again'
l = s.split()
st = set(l)
l = list(st)
l.sort()
for i in l:
    print(i,end=' ')
