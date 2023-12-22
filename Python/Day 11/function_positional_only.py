def concat(a, b, /, separator):
    return a + separator + b

# Correct usage
print(concat("Hello", "World", separator=" "))

# This will raise an error because 'a' and 'b' are positional-only
try:
    print(concat(a="Hello", b="World", separator=" "))
except TypeError as e:
    print(f"Error: {e}")
