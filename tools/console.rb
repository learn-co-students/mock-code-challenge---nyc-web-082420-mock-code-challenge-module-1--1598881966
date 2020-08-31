require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

adam = Driver.new("Adam")
minnie = Driver.new("Minnie")

jason = Passenger.new("Jason")
rachel = Passenger.new("Rachel")

Ride.new(adam, jason, 3.2)
Ride.new(adam, jason, 6.4)
Ride.new(adam, jason, 12.8)

binding.pry
