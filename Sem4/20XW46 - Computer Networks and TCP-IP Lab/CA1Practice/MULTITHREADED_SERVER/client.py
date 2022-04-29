import socket

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(('localhost', 65456))

while True:
    msg = input("Enter message to server : ")
    s.send(msg.encode())
    if msg == 'exit':
        break
    else:
        print(f"[SERVER] {s.recv(1024).decode()}")

s.close()