require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

bryn = Passenger.new("Bryn")
ari = Passenger.new("Ari")
katherine = Passenger.new("Katherine")

ziggy = Driver.new("Ziggy")
charles = Driver.new("Charles")
jackson = Driver.new("Jackson")

ride01 = Ride.new(ziggy, ari, 15.7)
ride02 = Ride.new(charles, bryn, 100.55)
ride03 = Ride.new(jackson, katherine, 2.18)
ride04 = Ride.new(jackson, bryn, 3.14)


# Put your variables here~!

binding.pry

## lol I didn't READ THE INSTRUCTIONS and created my own console.rb (face palm!!)
