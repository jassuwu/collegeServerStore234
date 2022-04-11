#20PW14.sender.py
import socket

s = socket.socket()
host = socket.gethostname()
port = 65456
s.connect((host, port))

sn = 0
request = ['0', '1', '0', '1', '0', '1']
canSend = True
while (sn < len(request)):
    print(f"sn = {sn}, length of request = {len(request)}")
    if (canSend):
        s.send(request[sn].encode())
        canSend = False
        sn += 1
        if (sn == len(request)):
            break
    ACK = s.recv(1024).decode()
    if ACK != request[sn]:
        sn -= 1
        print("Correct ACK not received. Initiating retransmission...")
    else:
        canSend = True
print("Transmission ended.")
s.close()
