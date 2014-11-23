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


