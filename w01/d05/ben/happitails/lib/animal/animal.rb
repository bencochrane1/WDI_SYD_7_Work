class Animal

  attr_accessor :name, :age, :gender, :species, :toys
 
  def initialize(name, age, gender, species, toys)
    self.name = name
    self.age = age
    self.gender = gender
    self.species = species
    self.toys = []
  end
 
  def add_client(client)
    @client = client
  end

  def to_s
    puts "#{name} is a #{species}"
  end

end
