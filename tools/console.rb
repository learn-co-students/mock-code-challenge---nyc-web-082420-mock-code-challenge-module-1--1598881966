require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!


austin = Passenger.new("Austin")
alana = Passenger.new("Alana")
rosie = Passenger.new("Rosie")
bex = Passenger.new("Rebecca")

mark = Driver.new("Mark")
jodie = Driver.new("Jodie")

ride1 = Ride.new(austin, mark)
ride2 = Ride.new(austin, mark, 25)
ride3 = Ride.new(alana, mark, 35)
ride4 = Ride.new(austin, jodie, 50)
ride5 = Ride.new(austin, jodie, 250)
ride6 = Ride.new(rosie, mark, 10)
ride7 = Ride.new(bex, jodie, 10)


binding.pry
