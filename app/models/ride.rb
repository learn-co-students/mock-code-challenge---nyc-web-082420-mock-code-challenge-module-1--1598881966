class Ride
    attr_accessor :driver, :passenger, :distance

    def initialize (driver, passanger)
        @passanger = passanger
        @driver = driver
        @distance = 0
    end

    def distance
        Ride.self
    end
    #wasnt able to finish, the idea here.

end


#this is the "has many"