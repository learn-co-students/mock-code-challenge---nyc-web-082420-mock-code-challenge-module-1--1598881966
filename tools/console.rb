require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

jay = Passenger.new("Jay")
jack = Passenger.new("Jack")

harry = Driver.new("Harry")


Ride.new(jay, harry)
Ride.new(jack, harry)

binding.pry
