def slope(x1, y1, x2, y2):
    return round((y2 - y1) / (x2 - x1), 2)

def y_intercept(x1, y1, m):
    return round(y1 - m * x1, 2)

def line_equation(m, b):
    return f"Y={m:.2f}x+{b:.2f}"

x1, y1 = map(int, input("مختصات نقطه اول را وارد کنید (x1 y1): ").split())
x2, y2 = map(int, input("مختصات نقطه دوم را وارد کنید (x2 y2): ").split())

m = slope(x1, y1, x2, y2)
b = y_intercept(x1, y1, m)

equation = line_equation(m, b)

print(f"{m:.2f}")
print(f"{b:.2f}")
print(equation)
