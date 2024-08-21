# 1. Variables and Data Types
greeting = "Hello, Python!"
number = 42
decimal_number = 3.14
is_python_fun = True

print(greeting)
print(f"Number: {number}, Decimal: {decimal_number}, Is Python fun? {is_python_fun}")

# 2. Lists and Dictionaries (Collections)
fruits = ['Apple', 'Banana', 'Cherry']
fruits.append('Mango')  # Adding an item to the list
print(f"Fruits: {fruits}")

person = {'name': 'John Doe', 'age': 30, 'city': 'New York'}
person['profession'] = 'Developer'  # Adding a key-value pair to the dictionary
print(f"Person Details: {person}")

# 3. Looping
print("Loop through the list:")
for fruit in fruits:
    print(fruit)

print("Loop through the dictionary:")
for key, value in person.items():
    print(f"{key}: {value}")

# 4. Functions
def greet(name):
    return f"Hello, {name}!"

print(greet('World'))

def multiply(x, y):
    return x * y

print(f"Multiplication: 5 * 3 = {multiply(5, 3)}")

# 5. Classes and Inheritance
class Animal:
    def __init__(self, name):
        self.name = name

    def speak(self):
        print("The animal makes a sound")

class Dog(Animal):
    def speak(self):
        print(f"{self.name} barks")

my_dog = Dog(name='Rex')
my_dog.speak()

# 6. Exception Handling
def divide(a, b):
    try:
        return a / b
    except ZeroDivisionError:
        print("Cannot divide by zero")
        return None

print(f"Division result: {divide(10, 0)}")

# 7. File I/O
file_path = "samples/example.txt"
with open(file_path, 'w') as file:
    file.write("This is a sample file.\n")
    file.write("Adding a new line to the file.\n")

print("File Content:")
with open(file_path, 'r') as file:
    for line in file:
        print(line.strip())

# 8. List Comprehensions
squares = [x**2 for x in range(10)]
print(f"Squares of numbers 0-9: {squares}")

# 9. Custom Functions
def say_hello(name):
    return f"Hello, {name}!"

print(say_hello("Python Developer"))

# 10. String Manipulation
text = "Python is awesome!"
print(f"Uppercase: {text.upper()}")
print(f"Substring: {text[0:6]}")
print(f"Contains 'awesome': {'awesome' in text}")

# 11. Working with Sets
unique_numbers = {1, 2, 3, 4, 4, 5}
unique_numbers.add(6)
print(f"Unique numbers: {unique_numbers}")

# 12. Working with Tuples
coordinates = (10, 20)
print(f"Coordinates: {coordinates}")
