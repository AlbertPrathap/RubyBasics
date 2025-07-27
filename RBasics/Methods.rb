=begin
Methods:
    1)Basic Method
    2)Method with Parameters
    3)Method with Default Parameters
    4)Method Returning a Value
    5)Shorter (implicit return)
    6)Variable Number of Arguments
    7)Method with Block (yield)
    8)Keyword Arguments
    9)Method Aliasing

1)Basic Method:Use the def keyword.

    def greet
        puts "Hello!"
    end

    greet

2)Method With Parameters:

    def add(a,b)
        puts a+b
    end

    add(10,20) #30

3)Method with default parameters:
    Either it'll add the default value we set or will print the value we are passing as parameters.

    def name(name="Albert")
        puts "My name is #{name}"
    end

    name             #My name is Albert
    name("Prathap")  #My name is Prathap

4)Method Returning a Value:

    def add(a,b,c)
        return a+b+c
    end

    puts add(10,20,30)  #60

5)Method with Shorter (implicit return):
    Ruby implicitly returns the last executed line, so you can skip return.

    def add(a,b)
        a+b
    end

    puts add(10,10)

6)Variable Number of Arguments:

    def sum(*numbers)
        numbers.sum
    end

    puts sum(1, 2, 3, 4)  # => 10

    What does *numbers mean?
        The * (splat operator) allows the method to accept any number of arguments as an array.

        *numbers packs all arguments into an array named numbers.

        For example, calling sum(1, 2, 3, 4) means numbers becomes [1, 2, 3, 4]

    Inside the method:
        numbers.sum
        
        *)numbers is [1, 2, 3, 4].
        *).sum is a Ruby method that adds all elements of an array.
        *)So, numbers.sum returns 1 + 2 + 3 + 4 = 10.
    
    Output:
        puts sum(1, 2, 3, 4)  # => 10
        It prints 10 to the console.

7)Method with block(yield):
    def greet
        puts "Before yield"
        yield
        puts "After yield"
    end

    greet { puts "Inside the block!" }

    Breakdown:
    def greet - You're defining a method named greet.
    
    puts "Before yield" - This line simply prints: Before yield

    yield - This is where Ruby calls the block you pass to the method.
            yield temporarily hands control over to the block { puts "Inside the block!" }.

    So, it prints:
        Inside the block!
    
    puts "After yield" - Once the block finishes, execution resumes in the method. 
          This line prints: After yield
    
    What is a block?
        A block in Ruby is a chunk of code enclosed in { } or do...end, which you can pass 
        to methods without being an argument.

    In your case:
        greet { puts "Inside the block!" }
        This block is passed implicitly to the greet method and invoked using yield.

    Final Output:
        Before yield
        Inside the block!
        After yield

    if no block is given:

    def alphabet
        puts "a"
        yield if block_given? #to handle such scenarios, it'll pass no matter if block is given or not
        puts "e"
    end
    alphabet  #ae

8)Keyword Arguments:

    def keys(name:, age:)
        puts "Name:#{name} and Age:#{age}"
    end

    keys(name:"Albert", age:24) #Name:Albert and Age:24

9)Method Aliasing:
    alias greet hello
        *This creates a new name (greet) for the existing method hello.
        *Now, both hello and greet refer to the same method.
        *Calling either one will execute the same method body.

    def als
        puts "Hi World!"
    end

    alias hi als

    hi      #Hi World!
    als     #Hi World!

=end


