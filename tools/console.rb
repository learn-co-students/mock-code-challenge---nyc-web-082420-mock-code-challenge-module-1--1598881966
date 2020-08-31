require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!



bob = Passenger.new('bob')
haley = Passenger.new('haley')


stupid_face = Driver.new('stupid_face')
needs_coffee = Driver.new('needs_coffee')


Ride.new(stupid_face, bob, 23.3)
Ride.new(needs_coffee, bob, 1.43)
Ride.new(stupid_face, bob, 9)
Ride.new(needs_coffee, haley, 4)


binding.pry