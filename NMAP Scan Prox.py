import socket

print(" ")
print('\033[1m'"N E V E R X ( 2 0 2 3)")
input('\033[1m'"Welcome to NEVER'S NMAP Network Tool v1.0. To get started press (Enter): ")
'\033[0m'
print('\033[1m'"Starting....")
print(" ")

host = str(input('\033[1m'"Enter the host IP you want to scan n shit:"))
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


print("Port Scanning Complete!")
print('\033[1m'"N E V E R X ( 2 0 2 3)")

print(input('\033[1m'"Press (Enter) to exit: "))
print(" ")
quit()      
