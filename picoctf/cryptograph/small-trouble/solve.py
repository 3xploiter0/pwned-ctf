from math import isqrt


def parse_values(path: str) -> dict[str, int]:
    values: dict[str, int] = {}
    with open(path, "r", encoding="utf-8") as handle:
        for line in handle:
            key, value = line.strip().split(" = ")
            values[key] = int(value)
    return values


def continued_fraction(numerator: int, denominator: int):
    while denominator:
        quotient = numerator // denominator
        yield quotient
        numerator, denominator = denominator, numerator - quotient * denominator


def convergents(terms):
    prev_num, prev_den = 0, 1
    num, den = 1, 0
    for term in terms:
        next_num = term * num + prev_num
        next_den = term * den + prev_den
        yield next_num, next_den
        prev_num, prev_den = num, den
        num, den = next_num, next_den


def is_square(value: int) -> bool:
    if value < 0:
        return False
    root = isqrt(value)
    return root * root == value


def long_to_bytes(value: int) -> bytes:
    if value == 0:
        return b"\x00"
    size = (value.bit_length() + 7) // 8
    return value.to_bytes(size, "big")


def wiener_attack(e: int, n: int) -> int:
    for k, d in convergents(continued_fraction(e, n)):
        if k == 0 or (e * d - 1) % k != 0:
            continue

        phi = (e * d - 1) // k
        s = n - phi + 1
        discriminant = s * s - 4 * n

        if not is_square(discriminant):
            continue

        t = isqrt(discriminant)
        if (s + t) % 2 != 0:
            continue

        p = (s + t) // 2
        q = (s - t) // 2
        if p * q == n:
            return d

    raise ValueError("Wiener attack failed: private exponent was not recovered")


def main():
    values = parse_values("message.txt")
    n = values["n"]
    e = values["e"]
    c = values["c"]

    d = wiener_attack(e, n)
    plaintext = long_to_bytes(pow(c, d, n))

    print(f"d = {d}")
    print(plaintext.decode())


if __name__ == "__main__":
    main()
