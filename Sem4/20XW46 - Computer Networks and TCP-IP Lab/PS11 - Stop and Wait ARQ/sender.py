#20PW14.sender.py
import socket

s = socket.socket()
host = socket.gethostname()
port = 65456
s.connect((host, port))
s.settimeout(1)

sn = 0
request = ['0', '1', '0', '1', '0', '1']
canSend = True
while (sn < len(request)):
    if (canSend):
        print(f"Sending {request[sn]}")
        s.send(request[sn].encode())
        canSend = False
        sn += 1
        if (sn == len(request)):
            break
    try:
        ACK = s.recv(1024).decode()
        print(f"Received ACK {ACK}")
    except:
        sn -= 1
        print("Correct ACK not received. Initiating retransmission...")
    canSend = True
print("Transmission ended.")
s.close()
