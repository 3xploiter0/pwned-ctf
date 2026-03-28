import base64

def multi_decode(data):
    # Base64 Decode
    try:
        b64_decoded = base64.b64decode(data).decode('utf-8')
        print(f"Base64 Decoded: {b64_decoded}")
    except:
        pass

def caesar_cipher(text, shift):
    result = ""
    for char in text:
        if char.isalpha():
            start = ord('a') if char.islower() else ord('A')
            result += chr((ord(char) - start + shift) % 26 + start)
        else:
            result += char
    return result

# To get the final flag from the second decode:
# print(caesar_cipher("wpjvJAX{jhlzhy_k3jy9wa3k_i204hkj6}", -7))
