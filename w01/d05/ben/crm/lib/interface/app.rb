require_relative "sales"

module Interface
  class App
    def start
      Sales.new
    end
  end
end
