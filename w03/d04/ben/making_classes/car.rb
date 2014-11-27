class Car
  attr_accessor :make, :model, :year

  def initialize(attr)
    @make = attr[:make]
    @modle = attr[:model]
    @year = attr[:year]
    @current_speed = 0
  end

  def current_speed
    @current_speed
  end



  def drive(speed)
    @current_speed = speed
    
  end

end




  def drive
  end

  def break
  end

  def new
  end

