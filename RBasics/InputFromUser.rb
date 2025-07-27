puts "Enter your name:"
a=gets.chomp
puts "Hello, #{a}!"

=begin
Line1 ==> puts stands for "put string", which means print text to the console with a newline at 
          the end.

Line2 ==> name = gets.chomp

          ✅ gets
            This reads a line of input from the user (from keyboard).

            Example: If the user types Prathap, gets captures "Prathap\n" (it includes the newline character from pressing Enter).

          ✅ chomp
            This removes the trailing newline (\n) from the input.

            So "Prathap\n".chomp becomes "Prathap"

          ✅ name = ...
            The cleaned input is stored in the variable name.

Line 3 ==> puts "Hello, #{name}!"
           This uses string interpolation (#{}) to embed the value of name inside the string.
           If you entered "Prathap", the output would be: Hello, Prathap!

Let me explain why gets includes \n and why chomp is necessary, with a simple analogy.

🔹 Why does gets include \n?
        When a user types input and presses Enter, it's not just the characters you typed — the Enter key 
        itself is part of the input.

        Example:
        You type:
        Prathap

        But what the system receives is:
        Prathap\n

        The \n (newline character) comes from pressing Enter — and gets is designed to read the entire line,
        including the newline at the end.

✅ This behavior is intentional and consistent across most programming languages.

🔹 Why use chomp?
If you don't remove \n, it stays in your string, and this can cause unexpected behavior.

        Example without chomp:
            name = gets       # You input: Prathap
            puts "Hello, #{name}!"   # Output: Hello, Prathap
            !    <-- the exclamation goes to a new line

        Example with chomp:
            name = gets.chomp
            puts "Hello, #{name}!"   # Output: Hello, Prathap!

✅ chomp simply removes the newline character \n from the end of the string — that’s all it does.

🔸 Why not avoid \n in the first place?
        Because gets is meant to read a whole line of input, and a line ends with \n. That's how 
        the OS and language understand that the user finished typing.

        Think of \n like a signal: “User is done typing, proceed.”

        You cannot stop the OS from adding \n when Enter is pressed, but you can remove it using 
        chomp.

✅ Summary:
        Behavior	       Explanation
        gets adds \n	   Because Enter creates a newline — gets reads the whole line including it.
        chomp removes \n   So you get only what the user typed, cleanly.
        Can't avoid \n	   It's a natural part of how input works — pressing Enter adds it.
=end