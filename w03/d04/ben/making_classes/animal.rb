class Animal
    def self.all
        con.exec("SELECT * FROM animals")
    end
end

