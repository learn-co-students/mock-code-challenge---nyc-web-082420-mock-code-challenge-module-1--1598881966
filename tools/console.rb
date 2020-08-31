require_relative '../config/environment.rb'
require '/Users/mamadoubarry/Development/mock-code-challenge---nyc-web-082420-mock-code-challenge-module-1--1598881966/app/models/driver.rb'
require '/Users/mamadoubarry/Development/mock-code-challenge---nyc-web-082420-mock-code-challenge-module-1--1598881966/app/models/passenger.rb'
require '/Users/mamadoubarry/Development/mock-code-challenge---nyc-web-082420-mock-code-challenge-module-1--1598881966/app/models/ride.rb'



def reload
  load 'config/environment.rb'
end

pass1 = Passenger.new('Mamadou')
driver1 = Driver.new('john')
ride1 = Ride.new(driver1, pass1, 20)


# Put your variables here~!

binding.pry
