def josephus(n, k):
    result = 0
    for i in range(1, n + 1):
        result = (result + k) % i
    return result + 1


def main():
    x = int(input("لطفاً تعداد تست‌ها را وارد کنید: "))
    results = []

    for i in range(x):
        print(f"\nتست {i + 1}:")

        n = 100
        k = 2

        while True:
            line = input("لطفاً مقدار n یا k را وارد کنید (برای پایان دادن به ورودی‌ها از * استفاده کنید): ").strip()
            if line == '*':
                break
            if line.startswith('n'):
                n = int(line.split()[1])
            elif line.startswith('k'):
                k = int(line.split()[1])

        freed_person = josephus(n, k)
        results.append(freed_person)

    print("\nنتایج:")
    for result in results:
        print(result)


if __name__ == "__main__":
    main()
