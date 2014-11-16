require_relative "animal"
require_relative "client"
require_relative "shelter"


module AnimalApp

  class App

    def start

      animals = [
        Animal.new("Boxer", 2, "male", "Bulldog", ["Noisy Pig","Tennis Ball"]),
        Animal.new("Boxer", 3, "female", "Staffy", ["Spiky Ball","Tennis Ball"]),
        Animal.new("Boxer", 1, "male", "Terrier", ["Rubber Ball","Tennis Ball","Noisy Ball"]),
        Animal.new("Boxer", 2, "female", "Irish Hound", ["Noisy Pig","Bone","Frisby"])
      ]

      clients = [
        Client.new("Max Peters", 2, 35, 0),
        Client.new("Veronica Corningstone", 3, 40, 1),
        Client.new("Jane Hilton", 1, 29, 2),
        Client.new("Bill Gardener", 3, 41, 1)
      ]

      shelter = [
        Shelter.new(["Bill Gardener", 3, 41, 1],["Boxer", 2, "female", "Irish Hound", ["Noisy Pig","Bone","Frisby"]])
        # Shelter.new(clients,animals)
      ]

    end


    def new_animal

    end

    def new_client

    end



    def menu
      puts `clear`
      puts "Welcome to the Happitails Database\n\n".color(:blue)
      print 'Choose: (L)ists, (A)nimal Management, (C)lient Management or (Q)uit. '
      gets.chomp.downcase
    end

    case menu
    when 'l'
      print 'Choose: (A)nimal List or (C)lient List.'
      reply = gets.chomp.downcase
      if reply == 'a'
        puts shelter.animals.to_s
        gets
        menu
      else reply == 'c'
        puts shelter.clients.to_s
        gets
        menu
      end
    when 'a'
      puts "You are in the Animal Management / Adoption Menu."
      print "Animal (i)n, (o)ut or (q)uit "
      adopt_choice = gets.chomp.downcase
      while adopt_choice != 'q'
        case adopt_choice
        when 'i'
          print "Name: "
          name = gets.chomp.capitalize
          print "Dog or Cat: "
          species = gets.chomp.capitalize
          print "Breed: "
          breed = gets.chomp.capitalize
          print "Age: "
          age = gets.to_i
          print "Gender (m/f): "
          gender = gets.chomp.downcase
          shelter.animals[name] = Animal.new(name, species, breed, age, gender)
          puts "Animal entry created"
        when 'o'
          puts "These are the animals that up for adoption: "
          puts shelter.animals.keys
          print "What's the name of the animal being adopted? "
          animal_name_out = gets.chomp
          print "What's the name of the new owner? "
          new_owner = gets.chomp.capitalize
          shelter.animals[animal_name_out].add_owner(new_owner)
          puts "Animal adopted"
        end

        print "Animal (i)n, (o)ut or (q)uit "
        adopt_choice = gets.chomp.downcase
      end
    when 'c'
      print "Would you like to add a client? (Y)es (N)o "
      answer = gets.chomp.downcase
      if answer == 'y'
        print 'Name: '
        name = gets.chomp
        print 'Age: '
        age = gets.to_i
        print 'Gender: '
        gender = gets.chomp
        print 'Number of children: '
        num_kids = gets.to_i
        print 'Number of pets: '
        num_pets = gets.to_i
        client = Client.new(name, age, gender, num_kids, num_pets)
        shelter.clients[name]=client
        puts 'Client has been added! Press return to continue.'.color(:yellow)
        gets
        menu
      else
        menu
      end
    when 'q'
      puts 'Quit application.'.color(:red)
    end
    response = menu
    end

end
