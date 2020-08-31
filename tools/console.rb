require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
nate = Driver.new("Nate")
bob = Driver.new("Bob")
liz = Driver.new("Liz")
billy = Driver.new("Billy")

binding.pry
