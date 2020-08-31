require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

def initialize
@driver_name = driver_name
@passenger_name = passenger_name
@distance = distance
  end

def initialize(name)
@name = name
end

def initialize(name)
  @name = name
  end  


binding.pry
