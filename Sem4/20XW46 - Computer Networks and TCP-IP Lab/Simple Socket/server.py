import socket

s = socket.socket()

host = '10.1.66.110' #IP of CSLAB3-21

print(host)

port = 65534
s.bind((host,port))
s.listen(5)
while True :
    c, addr = s.accept()
    print ('Got connection from', addr)
    while True:    
        print(c.recv(1024).decode())
        msg =input('Type ur mssg : ')
        c.send(msg.encode())
      
#c.send(bytes("Socket Programming in Python","utf-8 "))
c.close()