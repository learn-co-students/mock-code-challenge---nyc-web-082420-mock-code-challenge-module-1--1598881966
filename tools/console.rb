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

Ride.new(gabe, sean, 3.2)
Ride.new(jess, caryn, 6.8)
Ride.new(jake, johnnie, 2.1)
Ride.new(seyi, sean, 1.2)
Ride.new(jake, caryn, 2.4)
Ride.new(jake, sean, 5.1)
Ride.new(gabe, sean, 3.9)

binding.pry
