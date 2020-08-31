require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
# RIDE initialize(driver, passenger, distance=0.0)

kevin = Passenger.new("Kevin")
brian = Passenger.new("Brian")

dan = Driver.new("Dan")
bob = Driver.new("Bob")


ride_test = Ride.new(dan, kevin, 12.3)
ride_kevin_test = Ride.new(bob, kevin, 15.4)
ride_test2 = Ride.new("Joe", "Steve", 15.3)
ride_test1 = Ride.new("Joe", "Steve", 19.1)
binding.pry
