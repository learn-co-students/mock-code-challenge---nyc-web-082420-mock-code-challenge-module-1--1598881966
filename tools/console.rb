require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
nate = Driver.new("Nate")
bob = Driver.new("Bob")
liz = Driver.new("Liz")
billy = Driver.new("Billy")
bryam = Passenger.new("Bryam")
sabrina = Passenger.new("Sabrina")
scarlett = Passenger.new("Scarlett")
ride1 = Ride.new(nate, bryam, 10.4)
ride2 = Ride.new(liz, sabrina, 11.4)
ride3 = Ride.new(billy, scarlett, 9.4)
ride4 = Ride.new(bob, bryam, 9.5)
ride5 = Ride.new(nate, scarlett, 9.4)
ride6 = Ride.new(liz, bryam, 10.4)
ride7 = Ride.new(billy, bryam, 10.7)
ride8 = Ride.new(nate, bryam, 10.8)

binding.pry
