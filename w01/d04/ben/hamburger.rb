class Hamburger
  attr_accessor :meat, :cheese, :bread, :lettuce

  def print
    puts "The meat is #{self.meat}"
    puts "The cheese is #{self.cheese}"
    puts "The bread is #{self.bread}"
    puts "The lettuce is #{self.lettuce}"
  end

end


bigmac = Hamburger.new
bigmac.meat = "Beef"
bigmac.cheese = "Blue"
bigmac.bread = "Rye"
bigmac.lettuce = "Rocket"

bigmac.print