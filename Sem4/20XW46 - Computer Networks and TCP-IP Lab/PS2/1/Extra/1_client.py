"""
import socket
import sys
s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
addr = ("10.1.68.666",9998)
s.sendto(bytes("jass","utf-8"),addr)
f = open ("testrecv.txt", "wb")
"""
import socket
s=socket.socket(socket.AF_INET,socket.SOCK_DGRAM)
serverAddr=("10.1.66.168",9998)

#opt="y"
msg=input("Enter the message to be sent: ")
s.sendto(bytes(msg,"utf-8"),serverAddr)
f = open ("testrecv.jpg", "wb")


#msg=input("Enter the message to be sent: ")
#c.sendto(bytes(msg,"utf-8"),serverAddr)
#Servermsg=c.recvfrom(1024)
#print("Message from Server: ",Servermsg[0].decode())
#op=input("Do you want to continue: ")
#opt=op
"""l = s.recvfrom(1024)
f.write(l[0])
f.close()
s.close()"""


while(1):
    l = s.recvfrom(4096)
    f.write(l[0])
    if not l[0]:
        break
print("done")
f.close()
s.close()
