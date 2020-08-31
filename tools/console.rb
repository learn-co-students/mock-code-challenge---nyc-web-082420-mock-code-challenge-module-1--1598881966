require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

steve = Passenger.new("Steve")
henry = Passenger.new("Henry")
stacey = Passenger.new("Stacey")
bobby = Passenger.new("Bobby")
helga = Passenger.new("Helga")

lance = Driver.new("Lance")
arnold = Driver.new("Arnold")
carol = Driver.new("Carol")
alex = Driver.new("Alex")

ride1 = Ride.new(steve, lance, 42.7)
ride2 = Ride.new(henry, lance, 3.2)
ride3 = Ride.new(henry, alex, 3.2)
ride4 = Ride.new(helga, alex, 12.1)
ride5 = Ride.new(bobby, carol, 11.1)
ride6 = Ride.new(stacey, arnold, 27.2)
ride7 = Ride.new(bobby, lance, 15.0)
ride8 = Ride.new(steve, arnold, 99.9)
ride9 = Ride.new(henry, carol, 91.0)

binding.pry
