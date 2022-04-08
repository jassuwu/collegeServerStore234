keyWord = [1, 0, 1, 1]

codeFile = open('./code_error.txt', 'r')
code = codeFile.read().split()

r = len(keyWord) - 1
d = len(code[0]) - len(keyWord) + 1

for oneCode in code:
    print(oneCode, end="")
    oneC = [int(x) for x in oneCode]
    for i in range(d):
        if oneC[i] == 1:
            for j in range(len(keyWord)):
                oneC[i + j] = oneC[i + j] ^ keyWord[j]
    rem = oneC[len(oneC) - r:]
    for bit in rem:
        if bit != 0:
            print(" <-- has error.", end="")
            break
    print()
