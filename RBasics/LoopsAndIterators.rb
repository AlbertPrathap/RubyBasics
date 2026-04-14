=begin

Loops & Iterators:

  1) While
  2) Until
  3) loop do
  4) for
  5) .times iterator
  6) .each loop
  7) break, next, redo

=end

#1) while loop - runs untill the condition becomes false

i=10
while(i>=1)
    puts i
    i-=1
end

#2) until loop - The until loop keeps executing until the condition becomes true. 
                 #In simple words: "Do this while the condition is false."

i=10
until(i<10)
    puts i
    i-=1
end

#3) loop do - loop do is used to create an infinite loop.
              #It will keep running forever unless you explicitly use break to stop it.

j=0              
loop do
    puts "its #{j+=1}"
    break if j>=5
end

#4) for - runs until condition becomes false

#syntax:
 #for variable in range
  # code to execute
 #end

#sample program:

k=10
for k in (5..k).to_a
    puts "for,#{k}"
end

#5) .times iterator - The .times method is used to repeat a block of code a given number of times.

#Syntax:

#without an index

#n.times do
  # code to run n times
#end

#with an index

#n.times do |i|
  # code to run n times
#end

#sample program:

3.times do
    puts "JP"
end

3.times do |i|
    puts i
end

#6) .each loop - Works on arrays or collections

numbers = [100,200,300,400,500]

numbers.each do |num|
    puts "Each,#{num}"
end

numbers.length.upto(8) do |num|
    puts "Upto:#{num}"
end

numbers.length.downto(3) do |num|
    puts "downTO:#{num}"
end

#7) break, next, redo

#break - Exit the loop immediately
#next  - Skip current iteration and go to next
#redo  - Repeat the current iteration again (cannot be used with for because for is not block based)

k=1
while(k<=5)
    k+=1
    next if k==2
    if k==3
        k+=1
        redo
    end
    break if k>=5
    puts k
end

#output for above ==> prints nothing becoz 
#step 1: 1+1=2 ==> skips current iteration
#step 2: 2+1=3 & inside if (becoz k is 3 now) 3+1=4 +redo ==> goes to top of loop again
#step 3: 4+1=5 ==> comes to break and k is now 5 so breaks the loop