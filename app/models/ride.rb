class Ride
    attr_reader :driver, :passenger, :distance
    @@all=[]
    def initialize(driver, passenger, distance)
        @driver=driver
        @passenger=passenger
        @distance=distance
        @@all << self
    end
    def self.all
        @@all
    end
    def self.average_distance
        total_distance = Ride.all.map{|ride|ride.distance}
        total_distance.sum/total_distance.length
    end
end