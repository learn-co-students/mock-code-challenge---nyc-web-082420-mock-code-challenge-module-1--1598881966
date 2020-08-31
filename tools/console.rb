require_relative '../config/environment.rb'

require 'pry'
def reload
  load 'config/environment.rb'
end


# Put your variables here~!

# Drivers

anna = Driver.new("Anna")
billy = Driver.new("Billy")
carl = Driver.new("Carl")

# Passengers

bob = Passenger.new("Bob")
cathy = Passenger.new("Cathy")
dani = Passenger.new("Dani")

# Rides

Ride_1 = Ride.new(anna, bob, 50)
Ride_2 = Ride.new(billy, cathy, 100)
Ride_3 = Ride.new(carl, dani, 150)
Ride_4 = Ride.new(anna, dani, 200)




binding.pry
