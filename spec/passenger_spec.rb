require './lib/passenger'

RSpec.describe Passenger do
  describe "Iteration 1" do
    it "exists, has age and name" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      expect(charlie).to be_instance_of(Passenger)
      expect(charlie.name).to eq("Charlie")
      expect(charlie.age).to eq(18)
      expect(taylor).to be_instance_of(Passenger)
      expect(taylor.name).to eq("Taylor")
      expect(taylor.age).to eq(12)
    end

    it "checks if passenger is an adult" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      expect(charlie.adult?).to eq(true)
      expect(taylor.adult?).to eq(false)
    end

    it "checks if passenger is a driver" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      expect(charlie.driver?).to eq(false)
      charlie.drive
      expect(charlie.driver?).to eq(true)
    end
  end
end





