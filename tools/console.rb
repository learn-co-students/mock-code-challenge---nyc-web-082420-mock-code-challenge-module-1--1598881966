require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!


austin = Passenger.new("Austin")
alana = Passenger.new("Alana")

mark = Driver.new("Mark")
jodie = Driver.new("Jodie")

## should have mileage of 0
ride1 = Ride.new(austin, mark)
ride2 = Ride.new(austin, mark, 25)
ride3 = Ride.new(alana, mark, 35)
ride4 = Ride.new(austin, jodie, 50)



binding.pry
