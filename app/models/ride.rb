class Ride
    
    attr_accessor :driver, :passenger, :distance

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.average_distance
        #total distance / count
        distances = self.all.map { |ride| ride.distance }
        distances.sum / distances.count
    end    

end    
