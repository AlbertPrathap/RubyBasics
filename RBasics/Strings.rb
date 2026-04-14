=begin
1) What is a String?
   A string in Ruby is a sequence of characters inside " or '.
Example:
   greeting = "Hello"
   name = 'Ruby'

2) String Interpolation:
    Used to insert variables inside strings using #{} (works only with double quotes " ").

Example:
    name = "Prathap"
    puts "Hello, #{name}!"   # Hello, Prathap!

3) Common String Methods:
    text = "  Hello Ruby  "
    puts text.length         # 13
    puts text.strip          # "Hello Ruby" (removes extra spaces)
    puts text.upcase         # "  HELLO RUBY  "
    puts text.downcase       # "  hello ruby  "
    puts text.reverse        # "  ybuR olleH  "
    puts text.include?("Ruby")  # true
    puts text.gsub("Ruby", "World")  # replaces "Ruby" with "World"


4) Concatenation (Joining Strings):
    puts "Hello" + " " + "World"
    puts "Hi " * 3   # Repeats string

5) Split & Join
    sentence = "apple,banana,mango"
    words = sentence.split(",")  # ["apple", "banana", "mango"]
    puts words

    #In Ruby, the join method is specifically used to join elements of an array into a single 
    string — it cannot be directly used on a string without splitting it first.

    joined = words.join(" | ")   # "apple | banana | mango"
    puts joined

6) String to Number (and vice versa):
    num = "10"
    puts num.to_i + 5   # 15

    val = 99
    puts val.to_s + " bottles"   # "99 bottles"
=end