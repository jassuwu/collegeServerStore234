word = 'EVAPORATE'
lword = [ x for x in word]
lword = list(set(lword))
cguess = []
wguess = []
while(True):
    print( '\nCorrect guesses = ',cguess)
    print('\nWrong guesses = ', wguess )
    if len(lword) is len(cguess):
            print("Completed the guess")
            break          
        
    t = input("Enter a character:")
    if t in cguess or t in wguess:
        print("bruh u already entered that\n")
        continue
    elif t in word:
        cguess.append(t)
    else:
        wguess.append(t)
    for i in word:
        print(i,end = ' ') if i in cguess else print('_',end = ' ')
    