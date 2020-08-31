require_relative '../config/environment.rb'
require_relative '../app/models/passenger.rb'
require_relative '../app/models/driver.rb'
require_relative '../app/models/ride.rb'

def reload
  load 'config/environment.rb'
end


aizawa = Driver.new("Aizawa")
allmight = Driver.new("All Might")
shoto = Passenger.new("Shoto")
deku = Passenger.new("Deku")
bakugo = Passenger.new("Bakugo")

ride_1 = Ride.new(allmight, deku, 100)
ride_2 = Ride.new(allmight, bakugo, 25)
ride_3 = Ride.new(aizawa, shoto, 50)
ride_4 = Ride.new(aizawa, deku, 25)
ride_5 = Ride.new(aizawa, bakugo, 200)



binding.pry
