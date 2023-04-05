require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do
  describe "Iteration 2" do
    it "exists" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")  

      expect(vehicle).to be_instance_of(Vehicle)
    end

    it "has attributes" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")  

      expect(vehicle.year).to eq("2001")
      expect(vehicle.make).to eq("Honda")
      expect(vehicle.model).to eq("Civic")
    end

    it "checks if vehicle is speeding" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")  

      expect(vehicle.speeding?).to eq(false)
      vehicle.speed
      expect(vehicle.speeding?).to eq(true)
    end

    it "has an empty list of passengers" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")  

      expect(vehicle.passengers).to eq([])
    end


  end
end





# pry(main)> vehicle.passengers
# # => []

# pry(main)> charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
# # => #<Passenger:0x00007fe0da1ec450...>

# pry(main)> jude = Passenger.new({"name" => "Jude", "age" => 20})    
# # => #<Passenger:0x00007fe0da2730e0...>

# pry(main)> taylor = Passenger.new({"name" => "Taylor", "age" => 12})    
# # => #<Passenger:0x00007fe0da2cf1b0...>

# pry(main)> vehicle.add_passenger(charlie)    

# pry(main)> vehicle.add_passenger(jude)    

# pry(main)> vehicle.add_passenger(taylor)    

# pry(main)> vehicle.passengers
# # => [#<Passenger:0x00007fe0da1ec450...>, #<Passenger:0x00007fe0da2730e0...>, #<Passenger:0x00007fe0da2cf1b0...>]

# pry(main)> vehicle.num_adults
# # => 2