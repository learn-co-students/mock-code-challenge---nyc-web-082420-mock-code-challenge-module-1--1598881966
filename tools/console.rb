require_relative '../config/environment.rb'


def reload
  load 'config/environment.rb'
end


# Put your variables here~!
john = Passenger.new("John", 10, "Joe")
Casey = Passenger.new("Casey",15,"Tom")

binding.pry
