#20PW14.Framing.client.py
import socket
s = socket.socket()
host = socket.gethostname()
port = 65456
s.connect((host,port))


def bytestuff(l):
    if 'ESC' in l:
        l=l.replace("ESC", "ESC ESC")
    if 'FLAG' in l:
        l=l.replace("FLAG", "ESC FLAG")
    return l
        
def byteEncode(l):
    eightBitArr = []
    for i in l.split():
        if i == 'FLAG':
            eightBitArr.append('01111110')
        elif i == 'ESC':
            eightBitArr.append('10100011')
        else:
            eightBitArr.append(format(ord(i), '08b'))
    eightBitArr = " ".join(eightBitArr)
    return eightBitArr

def bitStuff(l):
    if '011111' in l: 
        l=l.replace('011111', '0111110')
    return l

def framing(l):
    frames = []
    for i in l.split():
        frames.append("01111110"+i+"01111110")
    frames = ''.join(frames)
    return frames


#Input the message
msg = input(">>> ")
print("Message = ", msg)
msg = bytestuff(msg)
# print("ByteStuffedMsg = ", msg)
msg = byteEncode(msg)
# print("ByteEncodedMsg = ", msg)
msg = bitStuff(msg)
# print("BitStuffedMsg = ", msg)
msg = framing(msg)
# print("FramedMsg = ", msg)

#Sending the message
print("Sending message...")
s.send(msg.encode())

s.close()

