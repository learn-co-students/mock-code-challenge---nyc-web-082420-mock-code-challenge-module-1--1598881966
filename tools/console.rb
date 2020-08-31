require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

ted = Driver.new("ted")

chris = Passenger.new("chris")

chris_ted_ride = Ride.new(ted, chris, 15) #distance in miles






binding.pry

