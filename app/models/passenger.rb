class Passanger
    attr_reader :name
    attr_accessor :distance, :passanger
    @@all = []
    def initialize(name, distance, passanger)
      @name = name
      @distance = distance
      @@all << self
    end
    def self.all 
        @@all
    end
    def name
        self.name = self
    end 
    def rides
        Ride.all.map {|ride|ride=self}
    end
    def drivers
        Driver.all.map {|driver| driver = self}
    end
    def total_distance
        self.Ride.each {|passenger| passenger.distance.sum = self}
    end
    def self.premium_members
        Ride.self.distance.all {|premium| premium > 100 = true}
    end
end