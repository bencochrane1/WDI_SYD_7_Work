print "Would you like to begin a new story? (y/n)"
start_again = gets.strip


if start_again == 'y'
    if File.exists? ('new_story.txt')
        File.unlink('new_story.txt')
    end
end


unless File.exists? 'new_story.txt'
    file = File.new('new_story.txt' 'a+')
    file.close

    # Make a new file and save it then start the story:

    print "Number:"
    number = gets.strip

    print "Occupation:"
    occupation = gets.strip

    print "Another occupation:"
    occupation2 = gets.strip    

    print "Place:"
    place = gets.strip

    print "Name:"
    name = gets.strip

    print "Another place:"
    place2 = gets.strip

    print "Another occupation again:"
    occupation3 = gets.strip

    print "Body part:"
    body_part = gets.strip

    File.open('new_story.txt', 'a+') do |story_file|
        story_file.write("#{number} years after the end of Rush Hour 2, James Careter is no longer a #{occupation} but a #{occupation2} on the streets of #{place}.\n")
    end

else
    file = File.new('new_story.txt')
    puts file.read
end





















print "Do you want to write a car add? (y/n) "
start_again = gets.strip


if start_again == 'y'
    if File.exists? 'ad.txt'
        File.unlink('ad.txt')
    end
end

unless File.exists? 'ad.txt'
    file = File.new('ad.txt', 'a+')
    file.close
    # Step 2: Ask questions
    print "Number of KMs:"
    number_of_kms = gets.strip.to_i

    print "What kind of doors does it have?"
    door_type = gets.strip

    # Step 3: Write the data

    File.open('ad.txt', 'a+') do |ad_file|
        ad_file.write("Number of KMs: #{number_of_kms}\n")
        ad_file.write("Door Type: #{door_type}\n")
    end

else
    # Step 4: Display file
    file = File.new('ad.txt', 'r')
    puts file.read
end


