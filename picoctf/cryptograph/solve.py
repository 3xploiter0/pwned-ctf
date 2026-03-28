def decode_a1z26(numbers_string):
    """
    Decodes a string of space-separated numbers into letters (1=A, 26=Z).
    Handles curly braces and spaces automatically.
    """
    words = []
    # Split by spaces but keep track of special characters like { }
    for part in numbers_string.split():
        if part.isdigit():
            # Convert to char: 1 + 64 = 65 ('A')
            words.append(chr(int(part) + 64))
        else:
            # Keep braces or other symbols as they are
            words.append(part)
            
    return "".join(words)

# The cipher from your image
cipher_text = "16 9 3 15 3 20 6 { 20 8 5 14 21 13 2 5 18 19 13 1 19 15 14 }"

print(f"Decoded Flag: {decode_a1z26(cipher_text)}")
