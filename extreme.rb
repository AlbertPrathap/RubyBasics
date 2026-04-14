class Animal
  def speak
    "Wild sound"
  end
end

class Dog < Animal
  def speak
    "Woofs!"
  end
end

class Cat
    @@cat_agex = 100
    def meow
        @cat_agex
        #cat_age = 10
    end
end

a = Cat.new

#puts a.meow.cat_agex

puts Cat.new.meow