keyWord = [1, 0, 1, 1]

dataFile = open('./dataword.txt', 'r')  #input data from file
codeFile = open('./code.txt', 'w')  #output code into file

data = dataFile.read().split()
d = len(data[0])
r = len(keyWord) - 1

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
                dividend[i + j] = dividend[i + j] ^ keyWord[j]
    rem = dividend[len(dividend) - r:]
    codeW = oneByte + rem
    codeFile.write("".join(str(x) for x in codeW))
    codeFile.write(" ")

print("checksum in code.txt")
