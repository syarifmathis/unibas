import numpy as np
x = np.array([[1, 2], [1, 2], [1, 2]])
print(x)
print()
y = np.array([1, 2, 3])
print()
print(y)
print()
print(np.array([y,]*2))
res = x * np.transpose(np.array([y,]*2))
print()
print(res)