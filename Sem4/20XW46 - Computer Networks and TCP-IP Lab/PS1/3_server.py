#3.server.py
import socket
s = socket.socket()
host = socket.gethostname()
port = 65456

s.bind((host,port))

s.listen(5)
while True:
        c, addr = s.accept()
        while True:
            message = "Message from server: " + c.recv(1024).decode()
            c.send(message.encode())
c.close()