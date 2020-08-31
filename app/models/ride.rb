
class Ride 
    
    attr_accessor :passenger, :driver 
    attr_reader :distance 

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
    end 

end 