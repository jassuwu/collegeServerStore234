#Framing.server.py
import socket
s = socket.socket()
host = socket.gethostname()
port = 65456

s.bind((host,port))

s.listen(5)
while True:
        c, addr = s.accept()
        while True:
            message = c.recv(1024).decode()
            c.send(message[::-1].encode())
c.close()
                                