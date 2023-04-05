require './lib/vehicle'
require './lib/passenger'
require './lib/park'

RSpec.describe Park do
  describe "Iteration 3" do
    it "exists" do
      congress_park = Park.new("Congress Park", 10)

      expect(congress_park).to be_instance_of(Park)
    end

    it "has a name and admission price" do
      congress_park = Park.new("Congress Park", 10)

      expect(congress_park.name).to eq("Congress Park")
      expect(congress_park.price).to eq(10)
    end

    it "has vehicles that entered the park, as well as a way to read that data" do
      congress_park = Park.new("Congress Park", 10)
      vehicle1 = Vehicle.new("2001", "Honda", "Civic")
      vehicle2 = Vehicle.new("2010", "Ford", "Taurus")
      vehicle3 = Vehicle.new("2020", "Toyota", "Rav4")

      expect(congress_park.vehicles).to eq([])

      congress_park.add_vehicle(vehicle1)
      congress_park.add_vehicle(vehicle2)
      congress_park.add_vehicle(vehicle3)

      expect(congress_park.vehicles).to eq([vehicle1, vehicle2, vehicle3])
    end

    it "can list all passengers that were in the vehicles that entered the park" do
      congress_park = Park.new("Congress Park", 10)
      vehicle1 = Vehicle.new("2001", "Honda", "Civic")
      vehicle2 = Vehicle.new("2010", "Ford", "Taurus")
      vehicle3 = Vehicle.new("2020", "Toyota", "Rav4")
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})
      kara = Passenger.new({"name" => "Kara", "age" => 30})

      expect(congress_park.passengers).to eq([])

      vehicle1.add_passenger(charlie)
      vehicle2.add_passenger(taylor)
      vehicle3.add_passenger(kara)
      
      congress_park.add_vehicle(vehicle1)
      congress_park.add_vehicle(vehicle2)
      congress_park.add_vehicle(vehicle3)

      expect(congress_park.passengers).to eq([charlie, taylor, kara])
    end

    it "can calculate revenue generated" do
      congress_park = Park.new("Congress Park", 10)
      vehicle1 = Vehicle.new("2001", "Honda", "Civic")
      vehicle2 = Vehicle.new("2010", "Ford", "Taurus")
      vehicle3 = Vehicle.new("2020", "Toyota", "Rav4")
      vehicle4 = Vehicle.new("2020", "Toyota", "Rav4")
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})
      kara = Passenger.new({"name" => "Kara", "age" => 30})
      jim = Passenger.new({"name" => "Jim", "age" => 30})
      honor = Passenger.new({"name" => "Honor", "age" => 17})

      vehicle1.add_passenger(charlie)
      vehicle2.add_passenger(taylor)
      vehicle3.add_passenger(kara)
      vehicle3.add_passenger(jim)
      vehicle4.add_passenger(honor)
      congress_park.add_vehicle(vehicle1)
      congress_park.add_vehicle(vehicle2)
      congress_park.add_vehicle(vehicle3)
      congress_park.add_vehicle(vehicle4)

      expect(congress_park.revenue).to eq(30)
    end
  end

  describe "Iteration 4" do
    it "Generates a list of all all_attendees names, sorted alphabetically" do
      congress_park = Park.new("Congress Park", 10)
      vehicle1 = Vehicle.new("2001", "Honda", "Civic")
      vehicle2 = Vehicle.new("2010", "Ford", "Taurus")
      vehicle3 = Vehicle.new("2020", "Toyota", "Rav4")
      vehicle4 = Vehicle.new("2020", "Toyota", "Rav4")
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})
      kara = Passenger.new({"name" => "Kara", "age" => 30})
      jim = Passenger.new({"name" => "Jim", "age" => 30})
      honor = Passenger.new({"name" => "Honor", "age" => 17})

      vehicle1.add_passenger(charlie)
      vehicle2.add_passenger(taylor)
      vehicle3.add_passenger(kara)
      vehicle3.add_passenger(jim)
      vehicle4.add_passenger(honor)
      congress_park.add_vehicle(vehicle1)
      congress_park.add_vehicle(vehicle2)
      congress_park.add_vehicle(vehicle3)
      congress_park.add_vehicle(vehicle4)

      expect(congress_park.all_attendees).to eq(["Charlie", "Honor", "Jim", "Kara", "Taylor"])
    end

    it "Generates a list of all minors names & a list of all adults names,sorted alphabetically" do
      congress_park = Park.new("Congress Park", 10)
      vehicle1 = Vehicle.new("2001", "Honda", "Civic")
      vehicle2 = Vehicle.new("2010", "Ford", "Taurus")
      vehicle3 = Vehicle.new("2020", "Toyota", "Rav4")
      vehicle4 = Vehicle.new("2020", "Toyota", "Rav4")
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})
      kara = Passenger.new({"name" => "Kara", "age" => 30})
      jim = Passenger.new({"name" => "Jim", "age" => 30})
      honor = Passenger.new({"name" => "Honor", "age" => 17})

      vehicle1.add_passenger(charlie)
      vehicle2.add_passenger(taylor)
      vehicle3.add_passenger(kara)
      vehicle3.add_passenger(jim)
      vehicle4.add_passenger(honor)
      congress_park.add_vehicle(vehicle1)
      congress_park.add_vehicle(vehicle2)
      congress_park.add_vehicle(vehicle3)
      congress_park.add_vehicle(vehicle4)

      expect(congress_park.minors).to eq(["Honor", "Taylor"])
      expect(congress_park.adults).to eq(["Charlie", "Jim", "Kara"])
    end
  end
end



