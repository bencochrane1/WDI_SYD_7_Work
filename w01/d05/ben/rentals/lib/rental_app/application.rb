
require_relative "building"
require_relative "apartment"

module RentalApp


  class Application

    def start

      building_one_apartments = [
        Apartment.new(250.0, false, 400, 1, 1),
        Apartment.new(250.0, true, 400, 1, 1),
        Apartment.new(450.0, true, 850, 2, 1)
      ]

      building_two_apartments = [
        Apartment.new(250.0, true, 400, 1, 1),
        Apartment.new(250.0, false, 400, 1, 1),
        Apartment.new(450.0, false, 850, 2, 1)
      ]


      buildings = [
        Building.new(
          "123 Fake Street, Fake Town",
          "Victorian",
          true,
          true,
          5,
          building_one_apartments
        ),
        Building.new(
          "123 Fake Street, Fake Town",
          "Victorian",
          true,
          true,
          5,
          building_two_apartments
        )
      ]
    end

    def list_buildings(buildings)

      buildings.each do |building|

        is_occupied_val = building.apartments.map do |apartment|
          apartment.is_occupied
        end

        is_there_an_available_apartment = is_occupied_val.include?(false)


        if is_there_an_available_apartment
          puts "#{buildings.index(building)}: #{building}"
        end

      end

    end


    


  end
end
