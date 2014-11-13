require_relative "animal"

class Mammal < Animal
    def eat
        puts "I can eat! Yum yum yum"
    end

    def speak(action)
        puts action
        puts "I can speak"
    end
end


monkey = Mammal.new
monkey.speak("hoo hoo haha")
