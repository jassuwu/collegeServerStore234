import socketserver
import http.server
import urllib
PORT = 65456
class MyProxy(http.server.SimpleHTTPRequestHandler):
   def do_GET(self):
    url=self.path[1:]
    self.send_response(200)
    self.end_headers()
    self.wfile = url
httpd = socketserver.TCPServer(('', PORT), MyProxy)
print ("Now serving at", str(PORT))
httpd.serve_forever()
