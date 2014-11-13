class Carclass
    attr_accessor :max_speed, :color, :seating_material

    def print
        puts "The car has a max-speed of #{self.max_speed}."
        puts "The car has a color of #{self.color}."
        puts "The car has a seating-material of #{self.seating_material}."
    end

    def drive
        puts "With only #{seating_material} this is a rough car."
    end

end


class Carmakes < Carclass
    attr_accessor :engine_size, :max_range
    
    def print
        super
        puts "The car has an engine-size of #{engine_size}."
        puts "The car has a max-range of #{max_range}."
    end

end


class Ferrari < Carmakes
    attr_accessor :high_max_speed

    def print
        super
        drive
        puts "This badboy has an extra high max speed of #{high_max_speed}"
    end

end

bochcar = Ferrari.new
bochcar.max_speed = 200
bochcar.high_max_speed = 500
bochcar.seating_material = "leather"
bochcar.print

bugatti = Carmakes.new
bugatti.engine_size = 0.3
bugatti.max_range = 2000
bugatti.print

