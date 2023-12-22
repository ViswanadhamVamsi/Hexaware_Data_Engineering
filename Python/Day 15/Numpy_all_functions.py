import numpy as np

# Creating arrays
a = np.array([1, 2, 3])                 # Create a basic array
b = np.arange(1, 10, 2)                 # Create an array with a range of values
c = np.linspace(0, 1, 5)                # Create an array with evenly spaced values
d = np.random.random((3, 3))            # Create a 3x3 array of random numbers

# Array manipulation
e = np.concatenate((a, b))              # Concatenate two arrays
f = np.reshape(d, (9,))                 # Reshape d to a 1D array

# Mathematical operations
g = a + 2                               # Add 2 to each element of a
h = np.sin(c)                           # Apply sine function to each element of c
i = np.dot(a, a)                        # Dot product of a with itself

# Statistical functions
j = np.mean(e)                          # Mean of e
k = np.std(f)                           # Standard deviation of f
l = np.max(b)                           # Maximum value in b

# Print results
print("a:", a)
print("b:", b)
print("c:", c)
print("d:", d)
print("e (concatenated a and b):", e)
print("f (reshaped d):", f)
print("g (a + 2):", g)
print("h (sin of c):", h)
print("i (dot product of a):", i)
print("j (mean of e):", j)
print("k (std of f):", k)
print("l (max of b):", l)
