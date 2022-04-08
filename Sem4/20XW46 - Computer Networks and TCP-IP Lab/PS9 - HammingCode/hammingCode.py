#EmitterSide
dataW = input('Enter data: ')
codeW = [int(x) for x in dataW]
m = len(dataW)
r = 1

#finding the value of 'r'
while 2**r < m + r + 1:
    r += 1

for i in range(r):
    codeW.insert(2**i - 1, 0)  #inserting 0s at parity bits

for i in range(r):
    j = 2**i
    value = 0
    while j < len(codeW) + 1:
        value += codeW[j - 1]
        if (j + 1) % (2**i) == 0:
            j += 2**i
        j += 1
    codeW[2**i - 1] = value % 2  #changing parity bit values

print('Resulting code word: ' + "".join([str(x) for x in codeW]))

############################################################################################################################################

#ReceptorSide
c = [0] * r
recvCode = [int(x) for x in input('Hamming code: ')]
n = len(recvCode)
r = 1

#finding the value of 'r'
while 2**r < n + 1:
    r += 1

#finding the error bit
errorBit = 0
for i in range(r):
    j = 2**i
    value = 0
    while j < len(recvCode) + 1:
        value += recvCode[j - 1]
        if (j + 1) % (2**i) == 0:
            j += 2**i
        j += 1
    if value % 2 == 1:
        errorBit += 2**i

#printing our the error and correcting it
if errorBit:
    print('Error at bit position:', errorBit)
    recvCode[errorBit - 1] ^= 1  #correction of the errorBit
    print('and the correct code is ' + "".join([str(x) for x in recvCode]))
else:
    print('There is no error.')

############################################################################################################################################
