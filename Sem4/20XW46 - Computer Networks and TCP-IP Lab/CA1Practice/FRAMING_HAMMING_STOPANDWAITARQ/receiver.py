import socket

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind((socket.gethostname(), 65456))
s.listen(5)

c, addr = s.accept()

frameSeq = [0, 1, 0]
rn = 0
sawCode = []

while rn < len(frameSeq):
    byte = c.recv(1024).decode()
    sawCode.append(byte)
    rn += 1
    if rn >= len(frameSeq):
        print("Received all frames")
        break
    else:
        print(f"Sending ACK {frameSeq[rn]}")
        c.send(str(frameSeq[rn]).encode())

# framedCode = c.recv(1024).decode()

#FLAG and ESC
FLAG = '01111110'
ESC = '10100011'

print(sawCode)

#Unframing
framedCode = ''.join(sawCode).replace(FLAG, ' ').split()

#HammingCorrection
unHammedCode = []
for frame in framedCode:
    dataW = [int(x) for x in frame]
    n = len(dataW)
    r = 1
    while 2**r < n + 1:
        r += 1
    errBit = 0
    for i in range(r):
        j = 2**i
        value = 0
        while j < len(dataW) + 1:
            value ^= dataW[j - 1]
            if (j + 1) % (2**i) == 0:
                j += 2**i
            j += 1
        if value % 2 == 1:
            errBit += 2**i

    if errBit:
        print('Error at bit position:', errBit)
        dataW[errBit - 1] ^= 1  #correction of the errorBit
        print('and the correct code is ' + "".join([str(x) for x in dataW]))
    else:
        print('Frame is error free.')
    removalIndex = []
    for i in range(r):
        removalIndex.append(2**i - 1)
    newDataW = []
    for i in range(len(dataW)):
        if i not in removalIndex:
            newDataW.append(dataW[i])
    dataW = newDataW
    dataW.reverse()
    dataW = [str(x) for x in dataW]
    unHammedCode.append(''.join(dataW))

#Unbitstuffing the data
unHammedCode = ''.join(unHammedCode)
unHammedCode = unHammedCode.replace('0111110', '011111')

#Degrouping the 4 8bit binaries to singles
degroupedCode = [unHammedCode[i:i + 8] for i in range(0, len(unHammedCode), 8)]

#byteDecoding the message
byteDecodedCode = []
for byte in degroupedCode:
    if byte == ESC:
        byteDecodedCode.append('ESC')
    elif byte == FLAG:
        byteDecodedCode.append('FLAG')
    else:
        byteDecodedCode.append(chr(int(byte, 2)))
byteDecodedCode = ' '.join(byteDecodedCode)

#byte Unstufffing
byteDecodedCode = byteDecodedCode.replace('ESC ESC', 'ESC')
byteDecodedCode = byteDecodedCode.replace('ESC FLAG', 'FLAG')

print("MESSAGE RECIEVED : ", byteDecodedCode)
