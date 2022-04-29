import socket
import threading

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind(('localhost', 65456))


def handle_client(conn, addr):
    print(f"Connection from : {addr}")
    while True:
        msg = conn.recv(1024).decode()
        print(f"[{addr}] {msg}")
        if msg == 'exit':
            print("EXITING")
            conn.close()
            break
        else:
            conn.send(msg.encode())


def start():
    s.listen(5)
    print(f"[SERVER] Listenting...")
    while True:
        conn, addr = s.accept()
        sthread = threading.Thread(target=handle_client, args=(conn, addr))
        sthread.start()


start()