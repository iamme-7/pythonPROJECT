def is_prime(num):
    if num < 2:
        return False
    for i in range(2, int(num**0.5) + 1):
        if num % i == 0:
            return False
    return True

def sieve(n):
    prime = [True] * (n + 1)
    p = 2
    while (p * p <= n):
        if (prime[p] == True):
            for i in range(p * p, n + 1, p):
                prime[i] = False
        p += 1
    return prime

n = int(input())
m = int(input())

if is_prime(m):
    print(-1)
else:
    prime_list = sieve(1 + n)
    count = 0
    result = -1
    for i in range(2, 1 + n):
        if prime_list[i]:
            count += 1
            if count == m:
                result = i
                break
    print(result)
