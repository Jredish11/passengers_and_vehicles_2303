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

  def all_attendees
    @passengers.map { |passenger| passenger.name }.sort
  end

  def minors
    @passengers.select { |passenger| passenger.adult? == false }.map { |passenger| passenger.name }.sort
  end
  
  def adults
    @passengers.select { |passenger| passenger.adult? == true }.map { |passenger| passenger.name }.sort
  end
end