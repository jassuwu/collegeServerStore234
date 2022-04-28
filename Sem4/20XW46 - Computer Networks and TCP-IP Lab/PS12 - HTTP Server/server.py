import http.server
import socketserver

class MyHttpRequestHandler(http.server.SimpleHTTPRequestHandler):
    def  do_GET(self):
        #if self.path == '/':
        #    self.path = 'index.html'
        return http.server.SimpleHTTPRequestHandler.do_GET(self)

    def do_POST(self):
        

# Create an object of the above class
handler_object = MyHttpRequestHandler

PORT = 65456
my_server = socketserver.TCPServer(("localhost", PORT), handler_object)
# Star the server
my_server.serve_forever()


