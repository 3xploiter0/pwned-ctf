data = open("digits.bin").read().strip()

# keep only 0/1
import re
data = ''.join(re.findall('[01]', data))

# split into bytes
bytes_list = [data[i:i+8] for i in range(0, len(data), 8)]

# convert to actual bytes
decoded = bytes(int(b, 2) for b in bytes_list)

# save as image
open("output.jpg", "wb").write(decoded)