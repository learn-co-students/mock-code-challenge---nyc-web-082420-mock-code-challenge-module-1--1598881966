require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!



bob = Passenger.new('bob')
haley = Passenger.new('haley')
hil = Passenger.new('hil')


stupid_face = Driver.new('stupid_face')
needs_coffee = Driver.new('needs_coffee')
zarro = Driver.new('zarro')
tom_motle = Driver.new('tom motle')

Ride.new(stupid_face, bob, 23.3)
Ride.new(needs_coffee, bob, 1.43)
Ride.new(stupid_face, bob, 99)
Ride.new(needs_coffee, haley, 4)
Ride.new(needs_coffee, haley, 78)
Ride.new(zarro, hil, 57)
Ride.new(tom_motle, hil, 0.40003)
Ride.new(tom_motle, haley, 11)


binding.pry