import socket

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind((socket.gethostname(), 65456))
s.listen(5)

c, addr = s.accept()
framedCode = c.recv(1024).decode()

#FLAG and ESC
FLAG = '01111110'
ESC = '10100011'

#Unframing
framedCode = framedCode.replace(FLAG, ' ').split()

#HammingCorrection
unHammmedCode = []
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
        print('There is no error.')
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
    unHammmedCode.append(''.join(dataW))

#Unbitstuffing the data
unHammmedCode = ' '.join(unHammmedCode)
unHammmedCode = unHammmedCode.replace('0111110', '011111')

print(unHammmedCode)