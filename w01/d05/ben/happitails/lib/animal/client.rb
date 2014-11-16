class Client

  attr_accessor :name, :number_of_children, :age, :number_of_pets
 
  def initialize(name, number_of_children, age, number_of_pets)
    self.name = name
    self.number_of_children = number_of_children
    self.age = age
    self.number_of_pets = number_of_pets
  end
 
  def to_s
    puts "#{name} is a #{age} years old, has #{number_of_children} kid(s) and #{number_of_pets} animal(s)."
  end
  

  def adopt
    number_of_pets += 1
  end

  def put_up_to_adopt
    number_of_pets += 1
  end


end
