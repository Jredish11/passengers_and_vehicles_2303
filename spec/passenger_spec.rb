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
  end
end










# pry(main)> charlie.age
# # => 18

# pry(main)> charlie.adult?
# # => true

# pry(main)> taylor.adult?
# # => false

# pry(main)> charlie.driver?
# # => false

# pry(main)> charlie.drive

# pry(main)> charlie.driver?
# # => true