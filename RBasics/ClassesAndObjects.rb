=begin

Classes and Objects:

1) What is a Class?
    A class is a blueprint for creating objects. It defines methods and variables common to all 
    objects of that class.

Example:
    class Car
        def start
            puts "Engine started"
        end
    end


2) What is an Object?
    An object is an instance of a class.

Example:
    car1 = Car.new  # Object of class Car
    car1.start      # => "Engine started"

3) Initialize Method (Constructor)
    Called automatically when a new object is created. Used to initialize instance variables.

    | Question                         | Answer                           |
    | -------------------------------- | -------------------------------- |
    | Is `initialize` required?        | ❌ No, but recommended            |
    | Is `initialize` the constructor? | ✅ Yes                            |
    | Can it be renamed?               | ❌ No                             |
    | Can it take parameters?          | ✅ Yes (with or without defaults) |


Example:
    class Car
        def initialize(brand)
            @brand = brand
        end

        def show_brand
            puts "Car brand: #{@brand}"
        end
    end

    car1 = Car.new("Toyota")
    car1.show_brand   # => "Car brand: Toyota"

4) Instance and Class Variables:

    | Variable Type           | Syntax                | Accessible by            | Shared Across Instances? |
    | ----------------------- | --------------------- | ------------------------ | ------------------------ |
    | Instance variable       | `@var`                | Instance methods         | ❌ No                     |
    | Class variable          | `@@var`               | Class & instance methods | ✅ Yes                    |
    | Class instance variable | `@var` in class scope | Class methods only       | ❌ No                     |

Example: Instance Variable
    Note: Declared inside instance methods like initialize, def some_method, etc.

    class Book
        def initialize
            @title = "Ruby"
        end

        def show
            puts @title
        end
    end

    b = Book.new
    b.show        # => Ruby

    Who can access it?
        ✔️ Instance methods
        ❌ Class methods
        ❌ Outside the object

Example: Class Variables

    *Shared across all instances of a class.
    *Can be accessed by both instance methods and class methods.
    *Be careful: all objects share the same value.

Who can access it?
    ✔️ Instance methods
    ✔️ Class methods
    ✔️ Shared across all instances

    class Book
        @@count = 0

        def initialize
            @@count += 1
        end

        def show_count
            puts "From instance: #{@@count}"
        end

        def self.show_count
            puts "From class: #{@@count}"
        end
    end

    b1 = Book.new
    b2 = Book.new

    b1.show_count       # => From instance: 2
    Book.show_count     # => From class: 2

Example: Class Instance Variables (@var outside methods)
    *Declared in the class body, outside instance methods.
    *Belong to the class object itself, not shared with instances.
    *Accessible only through class methods.

Who can access it?
    ❌ Instance methods
    ✔️ Class methods
    ❌ Not shared with instances

    class Book
        @category = "Programming"  # class instance variable

        def self.show_category
            puts @category
        end
    end

    Book.show_category  # => Programming

5) Class Methods:
    Defined using self.. They are called on the class itself, not on instances

Example:
    class MathUtils
        def self.add(a, b)
            a + b
        end
    end

    puts MathUtils.add(3, 4)  # => 7

6) Getters and Setters:
    What are Getters and Setters?
        *A getter is a method that returns the value of an instance variable.
        *A setter is a method that sets/updates the value of an instance variable.
        *They help you access and modify instance variables from outside the class in a safe, 
        controlled way.
    
Traditional Way (Manually writing methods)
    class Person
        def initialize(name)
            @name = name
        end

        # Getter
        def name
            @name
        end

        # Setter
        def name=(new_name)
            @name = new_name
        end
    end

    p = Person.new("Alice")
    puts p.name        # => "Alice" (getter)
    p.name = "Bob"     # setter
    puts p.name        # => "Bob"

Shorter Way Using Ruby’s Magic: attr_*
Ruby gives you built-in helpers to reduce boilerplate code:

| Keyword         | Purpose                        |
| --------------- | ------------------------------ |
| `attr_reader`   | Only creates getter            |
| `attr_writer`   | Only creates setter            |
| `attr_accessor` | Creates both getter and setter |

Example:
    class Person
        attr_accessor :name, :age
    end

    p = Person.new
    p.name = "Prathap"
    p.age = 25
    puts p.name  # => "Prathap"
