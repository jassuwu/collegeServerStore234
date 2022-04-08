#20PW14.receiver.py
import socket
s = socket.socket()
host = socket.gethostname()
port = 65456

s.bind((host,port))
s.listen(5)
c, addr = s.accept()

arrival = ['0','1','0','1','0','1']
recvdArr = []

rn = 0

for i in arrival:
    message = c.recv(1024).decode()
    if true:
        recvdArr.append(message)
        message = "ACK " + arrival[rn+1]
        c.send(message.encode())
        print("Frame[",rn,"]: ", message[-1])
        rn += 1
print(rn)
c.close()
                                