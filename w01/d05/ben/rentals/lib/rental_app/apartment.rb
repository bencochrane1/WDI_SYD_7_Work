module RentalApp

    class Apartment
        attr_accessor :price,
                        :is_occupied,
                        :square_foot,
                        :number_of_bedrooms,
                        :number_of_bathrooms

        def initialize(price, is_occupied, square_foot, number_of_bedrooms, number_of_bathrooms)
            self.price = price
            self.is_occupied = is_occupied
            self.square_foot = square_foot
            self.number_of_bedrooms = number_of_bedrooms
            self.number_of_bathrooms = number_of_bathrooms
        end

        def to_s
            "Apartment:\n" +
            "  Price: #{price}\n" +
            "  Is occupied: #{is_occupied}\n" +
            "  Square Foot: #{square_foot}\n" +
            "  Number of bedrooms: #{number_of_bedrooms}\n" +
            "  Number of bathrooms: #{number_of_bathrooms}\n"
        end

        def is_occupied?
            self.is_occupied == true
        end
    end

end