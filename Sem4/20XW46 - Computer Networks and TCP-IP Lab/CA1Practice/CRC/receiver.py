from re import S
import socket

KEY = [1, 0, 1, 1]

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind(('localhost', 65456))
s.listen(5)
print("[SERVER] Listening...")

server, addr = s.accept()

crcdCode = server.recv(1024).decode().split()
r = len(KEY) - 1
d = len(crcdCode[0]) - r

for byte in crcdCode:
    print(byte, end="")
    oneByte = [int(x) for x in byte]
    for i in range(d):
        if oneByte[i] == 1:
            for j in range(r + 1):
                oneByte[i + j] ^= KEY[j]
    rem = oneByte[len(oneByte) - r:]
    for bit in rem:
        if bit != 0:
            print(" 👎", end="")
            break
    else:
        print(" 👍", end="")
    print()
