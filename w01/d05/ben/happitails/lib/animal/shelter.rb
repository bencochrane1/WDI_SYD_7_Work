class Shelter

  attr_accessor :clients, :animals
 
  def initialize(clients, animals)
    @animals = []
    @clients = []
  end
 
  def to_s
    "The shelter has #{@animals.count} animals and #{@clients.count} clients."
  end
end
