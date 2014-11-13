class Printer
    def print(page, page_number = 3)
        puts "#{page_number}: #{page}"
    end
end


canon = Printer.new
canon.print("This is a canon printer")