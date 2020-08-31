require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!


def rides
  self.ride.all
end

binding.pry
