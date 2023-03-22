from socket import socket, AF_INET, SOCK_STREAM

sock = socket(AF_INET, SOCK_STREAM)
sock.connect(('localhost', 5000))
data = '[[[10.0], [413.3], [18.0], [8.0], [5.0], [6.0], [12.0], [5.0], [6.0], [2.0], [5.0], [12.0], [10.0], [5.0], [12.0], [10.0], [5.0]]]'.encode()
sock.send(data)
data = sock.recv(1024)  # читаем ответ от серверного сокета
sock.close()  # закрываем соединение
print(data)
