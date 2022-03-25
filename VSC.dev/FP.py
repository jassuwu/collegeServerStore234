complexity = [[3, 4, 6], [4, 5, 7], [3, 4, 6], [7, 10, 15], [5, 7, 10]]
promptList = ["External Inputs : ", "External Outputs : ", "External inquiries : ", "External Files : ", "Internal Files : " ]
inpArr = []
print("Enter the values in groups of 3s.")
for i in range(0, 5):
    three = list(map(int, input(promptList[i]).split()))
    inpArr.append(three)
UFC = 0
for i in range(0, 5):
    for j in range(0, 3):
        UFC += complexity[i][j]*inpArr[i][j]
print(UFC)
F = list(map(int, input("Enter 14 values in row (0-5)").split()))
F = sum(F)
print(F)
TCF = 0.65 + 0.01 * F
FP = UFC * TCF
print(round(FP))