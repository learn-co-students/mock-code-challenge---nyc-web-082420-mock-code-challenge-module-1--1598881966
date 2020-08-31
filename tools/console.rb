require_relative '../config/environment.rb'
require_relative './app/models/passenger'
require_relative '/.app/models/driver'
require_relative './app/models/ride'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
terry = Passenger.new ("Terry")

binding.pry
