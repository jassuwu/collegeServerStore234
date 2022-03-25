import socket
s=socket.socket(socket.AF_INET,socket.SOCK_DGRAM)
serverAddr=(socket.gethostname(),9998)

#opt="y"
msg=input("Enter the message to be sent: ")
s.sendto(msg.encode(),serverAddr)
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

i = 0
while(i < 7):
    l = s.recvfrom(1024)
    f.write(l[0])
    i=i+1
print("done")
f.close()
s.close()
