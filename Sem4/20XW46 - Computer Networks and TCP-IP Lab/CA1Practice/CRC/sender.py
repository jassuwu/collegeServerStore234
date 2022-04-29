import socket

c = socket.socket()
c.connect(('localhost', 65456))

KEY = [1, 0, 1, 1]
dataFile = open('./data.txt', 'r')
data = dataFile.read().split()

d = len(data[0])
r = len(KEY) - 1

#CRC
crcdCode = []
for byte in data:
    oneByte = [int(x) for x in byte]
    dividend = []
    for i in range(len(oneByte)):
        dividend.append(oneByte[i])
    for i in range(r):
        dividend.append(0)
    for i in range(len(oneByte)):
        if dividend[i] == 1:
            for j in range(r + 1):
                dividend[i + j] ^= KEY[j]
    rem = dividend[len(dividend) - r:]
    codeW = oneByte + rem
    codeW = [str(x) for x in codeW]
    crcdCode.append(''.join(codeW))

crcdCode = ' '.join(crcdCode)

c.send(crcdCode.encode())

c.close()