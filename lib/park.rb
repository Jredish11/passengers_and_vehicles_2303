class Park
  attr_reader :name, 
              :price, 
              :vehicles,
              :passengers

  def initialize(name, price)
    @name = name
    @price = price
    @vehicles = []
    @passengers = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
    @passengers += vehicle.passengers
  end

  def revenue
    adult_count = passengers.select { |passenger| passenger.adult? ==  true }.count
    adult_count * @price
  end
end