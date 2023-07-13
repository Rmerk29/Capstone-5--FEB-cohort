import socket
host = str (input("Enter the host to be scanned: "))
ip = socket.gethostbyname (host)
print (ip)
while 1:
  port = int (input("Enter the port: ")) 
try:
       sock = socket.socket() 
       res = sock.connect((ip, port))
       print ("Port {}: Open" .format(port))
       sock.close() 
except: 
     print ("Port {}: Closed" .format(port))
print ("Port scanning complete")    

