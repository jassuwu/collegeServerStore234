#20PW14.Framing.server.py
import socket
s = socket.socket()
host = socket.gethostname()
port = 65456

s.bind((host,port))
s.listen(5)
c, addr = s.accept()
message = c.recv(1024).decode()
# print(message)

FLAG = '01111110'
ESC = '10100011'


#Un-framing
if FLAG in message:
    message = message.replace(FLAG, ' ')
#print(message.split())
message = " ".join(message.split())
#print("Unframed = ", message)

#Un-bitstuffing
if '0111110' in message:
    message = message.replace('0111110','011111')
#print("Unbitstuffed = ", message)

#ByteDecoding
#print("MESSAGE SPLIT IN ByteDecoding = ", message.split())
messageList = []
for i in message.split():
    if i == FLAG:
        messageList.append('FLAG')
    elif i == ESC:
        messageList.append('ESC')
    else:
        messageList.append(chr(int(i, 2)))
message = " ".join(messageList)
#print("ByteDecoded = ", message)

#ByteUnstuffing
if 'ESC ESC' in message:
    message=message.replace("ESC ESC", "ESC")
if 'ESC FLAG' in message:
    message=message.replace("ESC FLAG", "FLAG")

print(message)
    

c.close()
                                