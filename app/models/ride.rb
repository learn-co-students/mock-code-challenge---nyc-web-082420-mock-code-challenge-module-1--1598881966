
class Ride 
    
    attr_accessor :passenger, :driver 

    @@all = []

    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver 
        @distance = distance 
        @@all << self 
    end 

    def self.all 
        @@all
    end 

    def self.average_distance
        @@all
    end 

end 