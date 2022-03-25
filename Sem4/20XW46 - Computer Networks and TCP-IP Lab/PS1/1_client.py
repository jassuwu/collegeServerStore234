#1.client.py
import socket
s = socket.socket()
host = socket.gethostname()
port = 65456

s.connect((host,port))

while True:
    msg = input("Please enter a message to the server: ")
    s.send(msg.encode())
    recvd = s.recv(1024).decode() 
    print(recvd)
    if recvd == "Goodbye":
        break
s.close()