=begin

Operators:
   1) Arithmetic Operators
   2) Logical Operators
   3) Comparison Operators

1) Arithmetic Operators:
   
    Sample Program:
        a = 10
        b = 5

        puts a == b   # false
        puts a != b   # true
        puts a > b    # true
        puts a < b    # false
        puts a >= b   # true
        puts a <= b   # false

2) Logical Operators:
    
    Sample Program:
        x = true
        y = false

        puts x && y   # false
        puts x || y   # true
        puts !x       # false

3) Comparison Operators:

    Sample Program:
        a = 10
        b = 5

        puts a == b   # false
        puts a != b   # true
        puts a > b    # true
        puts a < b    # false
        puts a >= b   # true
        puts a <= b   # false

Control Statements:
    1) if, elsif and else
    2) unless
    3) Ternary Operator
    4) Switch Case

1) if, elsif and else:

    Sample Program:

      age = 20
      if age>20 && age<=50
        puts "Adult"
      elsif age>=20 && age>18
        puts "middle"
      else
        puts "Senior Citizen"
      end

2) unless - unless is the opposite of if. It runs the block only if the condition is false

    Sample Program:
      age = 24
      unless age>25
        puts "Young"
      else
        puts "Adult"
      end

      Note: elsif cannot be used with unless.

3) Ternary Operator:
    
    Syntax: condition ? true_result : false_result
    
    Sample Program:
       
       age = 24
       puts age>=18 ? "Can Vote" : "Cannot Vote"

4) Switch Cases:

    Syntax:
        case variable
        when value1
        # code if variable == value1
        when value2
        # code if variable == value2
        else
        # code if no match found
        end

    Sample Program:

       day = "monday"

       case day
       when "monday"
        puts "its Monday"
       when "tuesday"
        puts "its Tuesday"
       when "wednesday"
        puts "its wednesday"
       when "thursday"
        puts "its thursday"
       when "friday"
        puts "its friday"
       when "saturday"
        puts "its saturday"
       else
        puts "Wrong day!"
       end

=end

#1) Take input from user – age → print whether "Child", "Teen", or "Adult"

puts "Enter Your Age:"
age = gets.chomp.to_i

#Explanation:
    #gets → gets user input as a string
    #chomp → removes the newline character (\n)
    #to_i → converts the string to an integer

if age<=12
    puts "Child"
elsif age>=13 && age<=19
    puts "Teen"
else
    puts "Adult"
end

#2) Take 2 numbers and print the largest one

   puts "Enter the first number:"
   a=gets.chomp.to_i
   puts "Enter the second number:"
   b=gets.chomp.to_i

   unless a>b
    puts "Largest number is #{b}"
   else
    puts "Largest number is #{a}"
   end

#3) Use ternary operator to check if number is even or odd

   puts "Enter a number:"
   c=gets.chomp.to_i
   puts c%2==0 ? "Even" : "Odd"