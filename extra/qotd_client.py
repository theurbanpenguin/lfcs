import socket

def get_qotd(host, port):
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        try:
            s.connect((host, port))
            data = s.recv(1024)
            return data.decode("utf-8").strip()
        except Exception as e:
            return str(e)

if __name__ == "__main__":
    qotd_host = "127.0.0.1"  # Replace with the QOTD server's hostname or IP
    qotd_port = 17  # QOTD typically runs on port 17

    quote = get_qotd(qotd_host, qotd_port)
    if quote:
        print("Quote of the Day:")
        print(quote)
    else:
        print("Failed to retrieve the quote.")