class Animal
  def speak
    "Generic sound"
  end
end

class Dog < Animal
  def speak
    "Woof!"
  end
end

puts Dog.new.speak  # => Woof!

#Hi Guys prathap here.