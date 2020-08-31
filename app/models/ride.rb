class Ride
    attr_accessor :driver, :passenger, :distance
    @@all = []

    def initialize(driver, passenger, distance=0.0)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        self.all.map{|d| d.distance}.sum / self.all.length
    end

end
