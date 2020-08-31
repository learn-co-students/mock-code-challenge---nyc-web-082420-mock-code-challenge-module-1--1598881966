require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



jess = Driver.new("Jessica")
rach = Driver.new("Rachel")
jill = Driver.new("Jill")

brian = Passenger.new("Brian")
jake = Passenger.new("Jake")
gabe = Passenger.new("Gabe")

# r1 = Ride.new(jess, brian, 3.5)
# r2 = Ride.new(jess, jake, 30.4)
# r3 = Ride.new(jill, brian, 20.1)
# r4 = Ride.new(jill, brian, 102.1)
# r5 = Ride.new(jess, gabe, 106.2)

# Put your variables here~!

binding.pry
