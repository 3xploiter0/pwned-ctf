# Small Trouble Writeup

## Challenge

- Category: Cryptography
- Name: `Small Trouble`
- Source files: [encryption.py](./encryption.py), [message.txt](./message.txt)

Challenge description:

> Everything seems secure, strong numbers, familiar parameters but something small might ruin it all. Can you recover the message?

## Given

The challenge provides standard RSA-looking values:

- `n`
- `e`
- `c`

And the source code shows how they were generated:

```python
p = getPrime(1048)
q = getPrime(1048)
n = p * q
phi = (p - 1) * (q - 1)

d = getPrime(256)
e = inverse(d, phi)

m = bytes_to_long(flag)
c = pow(m, e, n)
```

## Vulnerability

The weakness is that the private exponent `d` is chosen as a **256-bit prime**, while the modulus `n` is about **2096 bits**.

That makes `d` unusually small for RSA.

When RSA uses a small private exponent, **Wiener's attack** can recover `d` from only the public values `e` and `n` by using the continued fraction expansion of `e / n`.

So even though `p` and `q` are large, the key generation is still broken because the private exponent is too small.

## Exploit Idea

For valid RSA keys:

```text
e * d ≡ 1 mod phi(n)
```

So there exists some integer `k` such that:

```text
e*d - k*phi(n) = 1
```

Wiener's attack uses convergents of the continued fraction of `e / n` to guess candidates for `k/d`.

For each candidate:

1. Check whether `(e*d - 1)` is divisible by `k`
2. Reconstruct `phi(n)`
3. Recover `p` and `q` from:

```text
p + q = n - phi(n) + 1
pq = n
```

4. If the factors are valid, decrypt with the recovered `d`

## Solver

A local solver was added in [solve.py](./solve.py).

Run it with:

```bash
python3 solve.py
```

## Result

The solver recovers:

```text
d = 100438031580845492683739061612595804939634696303696568746500385452254674860237
picoCTF{sm4ll_d_57cacc98}
```

## Flag

```text
picoCTF{sm4ll_d_57cacc98}
```

## Takeaway

RSA is not secure just because `p` and `q` are large. Parameter choices matter too. In this challenge, the modulus size looked strong, but the small private exponent made the scheme vulnerable to Wiener's attack.
