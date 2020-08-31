
class Ride
    
    attr_accessor :driver, :passenger, :distance

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance.to_f
    end


end