=begin
Collections in Ruby:
    In Ruby, collections are built-in data structures used to store and manipulate groups of 
    objects. The main collection types in Ruby are:
       
       1) Array: 
            *Ordered, indexed collection of elements.
            *Elements can be of any data type.
            *Allows duplicates.

        Example:
            arr = [1, 2, 3, 4]

            #Accessing Elements
            puts arr[0]    # => 1
            puts arr[2]    # => 3

            #Update elements
            arr[1] = 10
            puts arr       # => [1, 10, 3, 4]

            #Add Elements
            arr << 5            # Push at end
            arr.push(6)         # Also push at end
            arr.unshift(0)      # Add at beginning

            #Remove elements
            arr.pop             # Removes last element
            arr.shift           # Removes first element
            arr.delete(3)       # Removes all 3s

            #Remove/Insert at specific index
            arr.delete_at(2)    #Delete the value that is present in indext 2
            arr.insert(2,40)    #Inserts 40 at index 2

            #To print like as it is
            puts a.inspect      #[35, 20]

            #Length/Size
            puts arr.length
            puts arr.size


        2) Hash
           *Collection of key-value pairs.
           *Keys are unique; values can be duplicated.
        
        Example:
            person = { name: "Bob", age: 25 }

            #Accessing values
            puts person[:name]  # => "Bob"
            puts person[:age]   # => 25

            #Adding/Updating values
            person[:city] = "Chennai"   # Adds a new key
            person[:age] = 26           # Updates existing key
            puts person.inspect

            #Removing
            person.delete(:city)
            puts person.inspect

            #loop through a hash
            person.each do |key, value|
                puts "#{key}: #{value}"
            end

        Common Hash Methods:

        | Method               | Description               |
        | -------------------- | ------------------------- |
        | `.keys`              | Returns all keys          |
        | `.values`            | Returns all values        |
        | `.has_key?(:name)`   | Checks if key exists      |
        | `.delete(:key)`      | Deletes a key-value pair  |
        | `.merge(other_hash)` | Merges two hashes         |
        | `.empty?`            | Checks if hash is empty   |
        | `.length` or `.size` | Number of key-value pairs |


        3) Set:
            *Part of the set library (needs to be required).
            *Collection of unordered, unique values.
        
        Example:
             
            #Creating a set
            require 'set'
            my_set = Set.new([1, 2, 3, 3, 4])
            puts my_set.inspect   # => #<Set: {1, 2, 3, 4}> #Duplicates are automatically removed. Order is not guaranteed.

            #Adding/Removing
            my_set.add(5)         # Adds 5
            my_set << 6           # Same as add
            my_set.delete(2)      # Removes 2

            #Set Operations

            | Operation    | Example          | Meaning                      |                           |
            | ------------ | ---------------- | ---------------------------- | ------------------------- |
            | Union        | \`a              | b`or`a.union(b)\`            | Combine all unique values |
            | Intersection | `a & b`          | Common values                |                           |
            | Difference   | `a - b`          | Values in `a` but not in `b` |                           |
            | Subset?      | `a.subset?(b)`   | Are all `a` elements in `b`? |                           |
            | Superset?    | `a.superset?(b)` | Is `a` fully covering `b`?   |   
            
            require 'set'

            a = Set.new([1, 2, 3])
            b = Set.new([3, 4, 5])

            puts (a | b).inspect   # Union => #<Set: {1, 2, 3, 4, 5}>
            puts (a & b).inspect   # Intersection => #<Set: {3}>
            puts (a - b).inspect   # Difference => #<Set: {1, 2}>
        
        4) Range:
            *Represents a sequence of numbers or characters with a start and an end.
        
        Example:
             (1..5).to_a       # => [1, 2, 3, 4, 5]
             ("a".."e").to_a   # => ["a", "b", "c", "d", "e"]

             (1..5)    # Includes 1 to 5 (inclusive)
             (1...5)   # Includes 1 to 4 (exclusive of 5)

             #Types
             | Syntax | Meaning                            |
             | ------ | ---------------------------------- |
             | `..`   | Inclusive range (`1..5` ⇒ 1 to 5)  |
             | `...`  | Exclusive range (`1...5` ⇒ 1 to 4) |

             #Common Uses
             
             1)Iteration
             (1..5).each do |num|
                puts num
             end
             # Output: 1 2 3 4 5

             (1...5).each do |num|
                puts num
             end
             # Output: 1 2 3 4

            2) Array Slicing
            arr = ["a", "b", "c", "d", "e"]
            puts arr[1..3].inspect   # => ["b", "c", "d"]
            puts arr[1...3].inspect  # => ["b", "c"]

            3) Case/When conditions
            age = 25
            case age
            when 0..12
             puts "Child"
            when 13..19
             puts "Teenager"
            when 20..64
             puts "Adult"
            else
             puts "Senior"
            end

            4) Range checks using include? or ===
            puts (10..20).include?(15)     # => true
            puts (10..20).include?(25)     # => false

            #only works if we working with range directly like below
            puts (1..10) === 5             # => true
            puts ("a".."z") === "f"        # => true

            5) Convert to an array
            range = (1..5)
            puts range.to_a.inspect   # => [1, 2, 3, 4, 5]

        5) Struct & OpenStruct (Advanced):
            *Custom lightweight collection types with named attributes.
            *Struct is a built-in Ruby class that lets you define your own custom classes quickly.
            *OpenStruct is a class defined in Ruby's standard library (you need to require 'ostruct').

        Struct:
            Struct is a built-in Ruby class that lets you create simple classes with pre-defined 
            attributes. It's useful for bundling data together.

        Features:
            *Fixed structure: Only defined attributes are allowed.
            *Supports getters, setters, to_h, each, etc.
            *Faster than OpenStruct.
        
        Example:
            Person = Struct.new(:name, :age)

            person = Person.new("Alice", 30)
            person1 = Person.new("Bob",24)

            puts person.name  # => "Alice"
            puts person.age   # => 30

            What this does: Person = Struct.new(:name, :age)

                *Defines a new Struct class called Person.
                *The Struct.new(:name, :age) part tells Ruby to create a class with two 
                attributes: :name and :age.
                *It automatically creates:
                    Getter methods: person.name, person.age
                    Setter methods: person.name = "...", person.age = ...
                *Now Person acts like a lightweight class.

            What this does: person = Person.new("Alice", 30)
                
                *Creates a new instance of Person, assigning:
                    name = "Alice"
                    age = 30
                *These values are passed in order as per the structure defined.

            What this does: person1 = Person.new("Bob", 30)
                
                *Creates another Person object with:
                    name = "Bob"
                    age = 30
                *You now have two different people stored in two different variables: person 
                 and person1.

        Open Struct:
            *OpenStruct allows you to create objects with arbitrary attributes — no need to define 
             them in advance.

        Example:
            require 'ostruct'

            person = OpenStruct.new
            person.name = "Bob"
            person.age = 25

            puts person.name  # => "Bob"







