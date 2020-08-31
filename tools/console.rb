require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

homer = Driver.new("homer")
maggie = Driver.new("maggie")
bart = Passenger.new("bart")
marge = Passenger.new("marge")
home = Ride.new(homer,marge,10)
work = Ride.new(homer,marge,90)
eat = Ride.new(maggie,bart,30)
wedding = Ride.new(maggie,marge,40)
# Put your variables here~!

binding.pry
