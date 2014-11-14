require 'pry'

require_relative "building"
require_relative "apartment"

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

# def my_puts(value)
#   if value.is_a?(Array)
#     value.each do |v|
#       print v.to_s
#     end
#   else 
#     print value.to_s
#   end
# end

# my_puts(buildings)

def list_buildings(buildings)
  buildings.each do |building|

    is_occupied_val = building.apartments.map do |apartment|
      apartment.is_occupied
    end

    is_there_an_available_apartment = is_occupied_val.include?(false)


    if is_there_an_available_apartment
      puts "#{buildings.index(building)}: #{building}"
    end


    # if building.apartments.map { |a| a.is_occupied }.include?(false)
    #   puts "#{buildings.index(building)}: #{building}"
    # end
  end



end


def list_apartments(buildings)
  puts "Choose a building:"
  building_number = gets.strip.to_i

  building = buildings[building_number]

  building.apartments.each do |apartment|
    puts "#{building.apartments.index(apartment)}: #{apartment}"
  end
end

# list available apartments in a building

def list_available_apartments(buildings)
  puts "Choose a building:"
  building_number = gets.strip.to_i

  building = buildings[building_number]

  building.apartments.each do |apartment|
    binding.pry
    if apartment.is_occupied?(false)
      puts "#{building.apartments.index(apartment)}: #{apartment}"
    end
  end
end


# puts buildings

puts "(q)quit, (lb)list buildings, (la)list all apartments, (laa)list all available apartments"

response = gets.strip

while response != 'q'
  case response
  when 'lb'
    list_buildings(buildings)
  when 'la'
    list_apartments(buildings)
  when 'laa'
    list_available_apartments(buildings)
  else
    puts "That menu item doesn't exist"
  end
  response = gets.strip
end







# buildings = {
#     "building_1" => {
#         address: "267 Sydney Lane, Sydney",
#         style: "art-deco",
#         has_doorman: true,
#         is_walkup: true,
#         num_floors: 20
#     },
#     "building_2" => {
#         address: "267 Sydney Lane, Sydney",
#         style: "art-deco",
#         has_doorman: true,
#         is_walkup: false,
#         num_floors: 28
#     },
#     "building_3" => {
#         address: "267 Sydney Lane, Sydney",
#         style: "art-deco",
#         has_doorman: false,
#         is_walkup: true,
#         num_floors: 21
#     },
#     "building_4" => {
#         address: "267 Sydney Lane, Sydney",
#         style: "art-deco",
#         has_doorman: false,
#         is_walkup: false,
#         num_floors: 23
#     }    

# }

# building_one_apartments = [
#     Apartment.new(),


#         )
# ]

# buildings = [
#     Building.new(
#         "123 Fake Street, Fake Town",
#         "Victorian",
#         true,
#         true,
#         5,
#         building_one_apartments
#         ),
#     Building.new(
#         "456 Real Street, Real Town",
#         "Art Deco",
#         true,
#         false,
#         3,
#         building_one_apartments
#         )
# ]


# apartments = {
#     "apartment_1" => {
#         building_name: "building_1",
#         price: 290,
#         is_occupied: false,
#         sqft: 1500,
#         num_beds: 4,
#         num_baths: 2
#     },
#     "apartment_2" => {
#         building_name: "building_1",
#         price: 300,
#         is_occupied: false,
#         sqft: 1200,
#         num_beds: 2,
#         num_baths: 1
#     },
#     "apartment_3" => {
#         building_name: "building_3",
#         price: 310,
#         is_occupied: true,
#         sqft: 1400,
#         num_beds: 1,
#         num_baths: 1
#     },
#     "apartment_4" => {
#         building_name: "building_4",
#         price: 240,
#         is_occupied: true,
#         sqft: 1240,
#         num_beds: 3,
#         num_baths: 3
#     }
      
# }


# renters = {
#     "person_1" => {
#         apartment_name: "apartment_2",
#         name: "Fred Blank",
#         age: 24,
#         gender: "male"
#     },
#     "person_2" => {
#         apartment_name: "apartment_4",
#         name: "Mike Bilson",
#         age: 21,
#         gender: "male"
#     },
#     "person_3" => {
#         apartment_name: "apartment_1",
#         name: "Jannie Janson",
#         age: 28,
#         gender: "female"
#     },
#     "person_4" => {
#         apartment_name: "apartment_3",
#         name: "Monica Peters",
#         age: 23,
#         gender: "female"
#     }
# }



# # all buildings with apartments available
# apartavail = apartments.reject do |apartment|
#     apartments[apartment][:is_occupied]
# end

# buildavail = apartavail.map do |key, apartment|
#     apartavail[key][:building_name]
# end
# # p buildavail



# # list all apartments in a building
# building = "building_1"

# allaparts = apartments.select do |key, apartment|
#     apartments[key][:building_name] == building
# end

# allbuildingapartments = allaparts.map do |key, apartment|
#     key
# end
# # p allbuildingapartments


# # list all apartments that are available in a building
# openapps = allaparts.reject do |key, apartment|
#     apartments[key][:is_occupied]
# end

# openappslist = openapps.map do |key, apartment|
#     key
# end

# puts openappslist






