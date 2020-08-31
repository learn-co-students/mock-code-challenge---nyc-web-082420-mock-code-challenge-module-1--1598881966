require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


sam = Passenger.new("Sam")
alice = Passenger.new("Alice")
ray = Passenger.new("Ray")
tiana = Passenger.new("Tiana")
kathy = Passenger.new("Kathy")
isaac = Driver.new("Isaac")
xavier = Driver.new("Xavier")
steve = Driver.new("Steve")
ride1 = Ride.new(xavier, tiana, 103.7)
ride2 = Ride.new(isaac, ray, 5.6)
ride3 = Ride.new(isaac, kathy, 10.8)
ride4 = Ride.new(xavier, sam, 5.4)
ride5 = Ride.new(isaac, sam, 10.8)
ride6 = Ride.new(isaac, sam, 2.2)
ride7 = Ride.new(xavier, alice, 37.6)
ride8 = Ride.new(isaac, ray, 21.5)
ride9 = Ride.new(steve, tiana, 3.2)


# Put your variables here~!

binding.pry
