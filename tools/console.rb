require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

steve = Passenger.new("Steve")
henry = Passenger.new("Henry")
stacey = Passenger.new("Stacey")

lance = Driver.new("Lance")
arnold = Driver.new("Arnold")



binding.pry
