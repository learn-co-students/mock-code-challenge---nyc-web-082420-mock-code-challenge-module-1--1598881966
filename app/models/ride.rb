class Ride

    attr_accessor :driver, :passenger, :distance
    @@all =[]

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end 

    def self.all
        @@all 
    end 

    #Returns the average distance across ALL rides
    def self.average_distance
        self.distance.reduce(0.0) {|sum, num| sum + num}.to_f / distance.size
    end 

end 


