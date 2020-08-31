require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Put your variables here~!
gabe = Passenger.new("Gabriel")
jess = Passenger.new("Jessica")
jake = Passenger.new("Jacob")
seyi = Passenger.new("Seyi")

sean = Driver.new("Sean")
caryn = Driver.new("Caryn")
johnnie = Driver.new("Johnnie")

Ride.new(gabe, sean, 31.2)
Ride.new(jess, caryn, 61.8)
Ride.new(jake, johnnie, 32.1)
Ride.new(seyi, sean, 10.2)
Ride.new(jake, caryn, 26.4)
Ride.new(jake, sean, 56.1)
Ride.new(gabe, sean, 87.9)

binding.pry
