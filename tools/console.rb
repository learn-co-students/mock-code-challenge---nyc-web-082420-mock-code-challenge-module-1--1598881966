require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
# RIDE initialize(driver, passenger, distance=0.0)

kevin = Passenger.new("Kevin")
brian = Passenger.new("Brian")
steve = Passenger.new("Steve")

dan = Driver.new("Dan")
bob = Driver.new("Bob")
joe = Driver.new("Joe")


ride_test = Ride.new(dan, kevin, 103.2)
ride_kevin_test = Ride.new(bob, kevin, 102.5)
ride_test2 = Ride.new(joe, steve, 101.1)
ride_test1 = Ride.new(joe, steve, 99.5)
binding.pry
