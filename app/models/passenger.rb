
class Passenger
    
    attr_reader :name
    attr_writer :ride, :driver
    
    def initialize(name)
        @name = name.to_s
        @ride = ride
        @driver = driver
    end

end