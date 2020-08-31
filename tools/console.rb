require_relative '../config/environment.rb'
require_relative '../app/models/driver.rb'
require_relative '../app/models/passenger.rb'
require_relative '../app/models/ride.rb'

def reload
  load 'config/environment.rb'
end


driver1 = Driver.new("driverA")
driver2 = Driver.new("driverB")
driver3 = Driver.new("driverC")
driver4 = Driver.new("driverD")

passenger1 = Passenger.new("PassengerA")
passenger2 = Passenger.new("PassengerB")
passenger3 = Passenger.new("PassengerC")
passenger4 = Passenger.new("PassengerD")

ride1 = Ride.new(passenger1, driver2, 101)
ride2 = Ride.new(passenger1, driver1, 80)
ride3 = Ride.new(passenger2, driver1, 20)
ride4 = Ride.new(passenger3, driver1, 40)
ride5 = Ride.new(passenger4, driver3, 30)
ride6 = Ride.new(passenger3, driver4, 63)

pry.start
