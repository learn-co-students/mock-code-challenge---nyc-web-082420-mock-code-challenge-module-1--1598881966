require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

jay = Passenger.new("Jay")
jack = Passenger.new("Jack")
mike = Passenger.new("Mike")

harry = Driver.new("Harry")
shawn = Driver.new("Shawn")


Ride.new(harry, jay,100)
Ride.new(shawn, jay,200)

Ride.new(harry, jack,50)
Ride.new(harry, mike,60)

binding.pry
