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
  end
end

#  Each park has a unique name and admission price, as well as a way to read that data.
# Each park has vehicles that entered the park, as well as a way to read that data.
# Each park can list all passengers that were in the vehicles that entered the park.
# Each park can calculate revenue generated. Revenue is generated by charging the admission price per adult that entered the park.
# Build upon your existing code from the first two iterations to implement this functionality.