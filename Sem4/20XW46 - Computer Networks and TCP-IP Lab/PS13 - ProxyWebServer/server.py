import socket
import sys
import threading


def main():
    global listen_port, buffer_size, max_conn
    try:
        listen_port = int(input('Enter a listening port: '))
    except KeyboardInterrupt:
        sys.exit(0)

    max_conn = 5
    buffer_size = 8192

    try:
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.bind(("localhost", listen_port))
        s.listen(max_conn)
        print("[Server] Initialized socket... Done.")
        print("[Server] Socket binded successfully...")
        print("[Server] Started successfully [{}]".format(listen_port))

    except Exception as e:
        print(e)
        sys.exit(2)

    while True:
        try:
            conn, addr = s.accept()
            data = conn.recv(buffer_size).decode()
            th = threading.Thread(target=conn_string, args=(conn, data, addr))
            th.start()
        except:
            s.close()
            print("\n[Server] Shutting down...")
            sys.exit(1)
    s.close()


def conn_string(conn, data, addr):
    try:
        first_line = data.split("\n")[0]
        url = first_line.split(" ")[1]

        http_pos = url.find("://")
        if http_pos == -1:
            temp = url
        else:
            temp = url[(http_pos + 3):]
        port_pos = temp.find(":")

        webserver_pos = temp.find("/")
        if webserver_pos == -1:
            webserver_pos = len(temp)
        webserver = ""
        port = -1

        if port_pos == -1 or webserver_pos < port_pos:
            port = 80
            webserver = temp[:webserver_pos]
        else:
            port = int(temp[(port_pos + 1):][:webserver_pos - port_pos - 1])
            webserver = temp[:port_pos]

        print(webserver)
        proxy_server(webserver, port, conn, data, addr)
    except Exception as e:
        print(e)


def proxy_server(webserver, port, conn, data, addr):
    try:
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.connect((webserver, port))
        s.send(data.encode())

        while True:
            reply = s.recv(buffer_size).decode()

            if len(reply) > 0:
                conn.send(reply.encode())

                dar = float(len(reply))
                dar = float(dar / 1024)
                dar = "{}.3s".format(dar)

                print("[Server] Request done: {} => {} <= {}".format(
                    addr[0], dar, webserver))
            else:
                break
        s.close()
        conn.close()
    except:
        s.close()
        conn.close()
        sys.exit(1)


if __name__ == "__main__":
    main()
