class Vehicle
  attr_reader :year, 
              :make, 
              :model, 
              :sped,
              :passengers
  
  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @sped = false
    @passengers = []
  end

  def speeding?
    @sped
  end

  def speed
    @sped = true
  end



end