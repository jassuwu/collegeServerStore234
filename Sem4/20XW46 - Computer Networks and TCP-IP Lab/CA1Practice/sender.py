#Objective : Practice Encoding, HammingCode, Framing and Stop and Wait ARQ in one single program

import socket

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect((socket.gethostname(), 65456))

#FLAG and ESC
FLAG = '01111110'
ESC = '10100011'

dFile = open('data.txt', 'r')  #Opening the text file
data = dFile.read()  #Reading and storing the data

#bytestuffing the data
data = data.replace("ESC", "ESC ESC")
data = data.replace("FLAG", "ESC FLAG")

#byteEncoding the data
binaryCode = []
for i in data.split():
    if i == 'ESC':
        binaryCode.append(ESC)
    elif i == 'FLAG':
        binaryCode.append(FLAG)
    else:
        binaryCode.append(format(ord(i), '08b'))
binaryCode = ' '.join(binaryCode)

#bitStuffing the data '011111' to '0111110'
binaryCode = binaryCode.replace('011111', '0111110').split()

#hammingCoding the data
binaryCode = [
    ''.join(binaryCode[i:i + 4])
    for i in range(0, len(binaryCode), 4)  #Grouping four 8bitstrings into one
]
print("Code before Hamming: ", binaryCode)
hammingedCode = []
for tt in binaryCode:
    dataW = [int(x) for x in tt]
    dataW.reverse()
    m = len(dataW)
    r = 1

    while 2**r < m + r + 1:
        r += 1

    for i in range(r):
        dataW.insert(2**i - 1, 0)

    for i in range(r):
        j = 2**i
        value = 0
        while j < len(dataW) + 1:
            value ^= dataW[j - 1]
            if (j + 1) % (2**i) == 0:
                j += 2**i
            j += 1
        dataW[2**i - 1] = value
    dataWstr = [str(x) for x in dataW]
    dataWstr = ''.join(dataWstr)
    hammingedCode.append(dataWstr)

#Framing the data after applying HammingCode
framedCode = [FLAG + i + FLAG for i in hammingedCode]
framedCode = ''.join(framedCode)
s.send(framedCode.encode())