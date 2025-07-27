=begin
DataTypes
 1)Integer
 2)String
 3)Float
 4)Boolean
 5)Nil

In Ruby, you do not need to define the data type of a variable when you declare it.

Why?
    Ruby is a dynamically typed and interpreted language. That means:
        *Variable types are determined at runtime
        *You can assign any value to any variable without specifying its type
        *You can even reassign a different type to the same variable later

 1)Integer ==> Represents whole numbers (positive or negative) ==> Age = 24

 2)String,
     Represents sequences of characters (text).

     Example:
     name = "Prathap"
     greeting = 'Hello'

    In Ruby, both single quotes ' ' and double quotes " " can be used to define strings, but they 
    are not exactly the same. The key difference lies in how they handle string interpolation and 
    escape sequences.

    String Interpolation:
     name = "Ruby"
     puts "Hello, #{name}!"   # => Hello, Ruby!
     puts 'Hello, #{name}!'   # => Hello, #{name}!

    Escape Sequences:
     puts "Line1\nLine2"
     # Output:
     # Line1
     # Line2

     puts 'Line1\nLine2'
     # Output: Line1\nLine2

    3)Float,
      Represents decimal numbers.
      price = 99.99

    4)Boolean,
      Represents logical true/false values.
      isTrue = true;
      isFalse = false;

    5)Nil,
      Represents "nothing" or "no value".
      a=nil
=end

#int
puts a=10;

#string
puts b="hello";
puts c='world';

#float
puts k=7.6;

#boolean
puts l=true;

#Nil
puts n=nil;