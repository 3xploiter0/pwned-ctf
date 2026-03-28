import requests

BASE = "http://dolphin-cove.picoctf.net:49410"

s = requests.Session()
s.cookies.set("session", "3LxwtjZ4wtePR3L33_vMZU9ZPZWImlObnCjkr4iF32c")

r = s.get(BASE + "/")
print(r.text)
