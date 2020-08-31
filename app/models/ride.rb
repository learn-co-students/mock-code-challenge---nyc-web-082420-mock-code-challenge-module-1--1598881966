class Ride
    attr_accessor :driver, :passanger, :distance
    @@all = []
    def initialize(driver, passanger, distance)
      @driver = driver
      @passanger = passanger
      @distance = distance
      @@all << self
    end
    def self.all
        @@all
    end
    def passanger
        self.passanger
    end
    def driver
        self.driver
    end
    def distance
        self.distance
    end
    def self.average_distance
        avg = []
        avg << self.distance.map
        avg.sum / avg.size
        
    end

end