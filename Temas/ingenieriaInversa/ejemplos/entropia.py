"""Entropía empírica de bytes por ventanas; offsets en bytes, H en bits/byte."""
import argparse
import math
from collections import Counter


def entropy(data):
    if not data:
        raise ValueError("empty window has no empirical distribution")
    n = len(data)
    return -sum((count / n) * math.log2(count / n)
                for count in Counter(data).values())


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("image")
    parser.add_argument("--window", type=int, default=4096)
    args = parser.parse_args()
    if args.window <= 0:
        parser.error("--window debe ser positivo")
    print("offset_bytes,size_bytes,entropy_bits_per_byte")
    with open(args.image, "rb") as image:
        offset = 0
        while data := image.read(args.window):
            print(f"{offset},{len(data)},{entropy(data):.6f}")
            offset += len(data)


if __name__ == "__main__":
    main()
