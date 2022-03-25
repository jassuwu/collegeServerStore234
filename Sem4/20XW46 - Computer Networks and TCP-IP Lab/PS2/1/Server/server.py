import socket

s=socket.socket(socket.AF_INET,socket.SOCK_DGRAM)
s.bind((socket.gethostname(),9998))
print(socket.gethostbyname(socket.gethostname()))
print("Server waiting")
d = {}
bs = 1
while True:
    cData=s.recvfrom(1024)
    msg = cData[0]
    cIp = cData[1]
    print(cIp)
    if cIp not in d:
        d[cIp] = msg.decode()
        print("Server is connected with : ",cIp)
    
    f = open('img.jpg','rb')
    l = f.read(bs)
    while l:
        s.sendto(l,cIp)
        l = f.read(bs)
    print('Send over!')
    #print("Message from client: ",msg.decode())
    #s.sendto(msg,cData[1])

s.close()
