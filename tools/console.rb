require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
jake = Passenger.new("jake")
jane = Passenger.new("jane")
michael = Driver.new("michael")
susan = Driver.new("susan")
mike_drives_jake = Ride.new(michael, jake, 20.0)
mike_drives_jane = Ride.new(michael, jane, 10.0)
susan_drives_jake = Ride.new(susan, jake, 40.0)
susan_drives_jane = Ride.new(susan, jane, 30.0)
binding.pry
