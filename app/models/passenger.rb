
class Passenger

    attr_reader :name
    
    def initialize(name)
        @name = name.to_s
    end

    def rides
        Ride.all.select {|ride| ride.passenger == self}
    end

    def drivers
        Driver.all.select {|driver| driver.passenger == self}
    end

end