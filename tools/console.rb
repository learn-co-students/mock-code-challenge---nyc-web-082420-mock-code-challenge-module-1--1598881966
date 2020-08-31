require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


puts puts puts puts 
# Put your variables here~!

puts "I'm Working?"
puts "
BET!
"



##############
## Drivers
##############

rehahl = Driver.new("Rehahl Doog", 0.2)

jerome = Driver.new("Jerome Sanders", 400)


##############
## Passengers
##############

molly = Passenger.new("Molly")

bougie = Passenger.new("Migos-Shared-Account", 100000000)





binding.pry