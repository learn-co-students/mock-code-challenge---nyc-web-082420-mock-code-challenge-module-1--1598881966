require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

new_driver = Driver.new(name)
new_passenger = Passenger.new(name)
new_ride = Ride.new(ride)
binding.pry
