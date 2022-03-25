import socket
s = socket.socket()
host=socket.gethostname()
port=9999
s.connect(('10.1.67.209',port))
while True:
    msg = input('>>> ')
    s.send(msg.encode())
    print("Server:", s.recv(1024).decode())
#print(msg.decode("utf-8"))
s.close()
