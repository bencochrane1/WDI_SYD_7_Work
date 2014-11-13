class Person
    attr_accessor :first_name, :last_name

    def full_name
        "#{self.first_name} #{self.last_name}"
    end
end

ben = Person.new
ben.first_name = "Ben"
ben.last_name = "Cochrane"

puts ben.full_name
