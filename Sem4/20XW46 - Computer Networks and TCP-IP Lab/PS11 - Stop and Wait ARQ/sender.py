#20PW14.sender.py
import socket
s = socket.socket()
host = socket.gethostname()
port = 65456
s.connect((host,port))

sn = 0
request = ['0','1','0','1','0','1']

while(sn <= len(request)):
    print("Sending Frame[",sn,"]...")
    s.send(request[sn].encode())
    sn+=1
    try:
        message = s.recv(1024).decode()
        print(message, "received.\n")
    if request[sn+1] == message[-1]:
        sn += 1

s.close()