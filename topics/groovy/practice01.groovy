// 1. Variables and Data Types
def greeting = "Hello, Groovy!"
def number = 42
def decimalNumber = 3.14
def isGroovyFun = true

println(greeting)
println("Number: $number, Decimal: $decimalNumber, Is Groovy fun? $isGroovyFun")

// 2. Lists and Maps (Collections)
def fruits = ['Apple', 'Banana', 'Cherry']
fruits << 'Mango' // Adding an item to the list
println("Fruits: $fruits")

def person = [name: 'John Doe', age: 30, city: 'New York']
person['profession'] = 'Developer' // Adding a key-value pair to the map
println("Person Details: $person")

// 3. Looping
println("Loop through the list:")
fruits.each { fruit ->
    println(fruit)
}

println("Loop through the map:")
person.each { key, value ->
    println("$key: $value")
}

// 4. Closures
def greet = { name ->
    return "Hello, $name!"
}
println(greet('World'))

def multiply = { x, y ->
    return x * y
}
println("Multiplication: 5 * 3 = ${multiply(5, 3)}")

// 5. Classes and Inheritance
class Animal {
    String name

    def speak() {
        println("The animal makes a sound")
    }
}

class Dog extends Animal {
    def speak() {
        println("$name barks")
    }
}

def myDog = new Dog(name: 'Rex')
myDog.speak()

// 6. Exception Handling
def divide = { a, b ->
    try {
        return a / b
    } catch (ArithmeticException e) {
        println("Cannot divide by zero")
    }
}
println("Division result: ${divide(10, 0)}")

// 7. File I/O
def filePath = "example.txt"
def file = new File(filePath)
file.write("This is a sample file.\n")
file.append("Adding a new line to the file.\n")

println("File Content:")
file.eachLine { line ->
    println(line)
}

// 8. Custom Methods
def sayHello(String name) {
    return "Hello, $name!"
}
println(sayHello("Groovy Developer"))

// 9. Working with Ranges
def range = 1..5
println("Range: $range")

range.each { number ->
    println("Number in range: $number")
}

// 10. String Manipulation
def text = "Welcome here, have a good day!"
println("Uppercase: ${text.toUpperCase()}")
println("Substring: ${text.substring(0, 6)}")
println("Contains 'awesome': ${text.contains('awesome')}")
