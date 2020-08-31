require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


sam = Passenger.new("Sam")
kev = Passenger.new("Kev")


alex = Driver.new("Alex")
tim = Driver.new("Tim")

r1 = Ride.new(sam, alex, 2.5)
r2 = Ride.new(kev, tim, 40.0)



binding.pry
