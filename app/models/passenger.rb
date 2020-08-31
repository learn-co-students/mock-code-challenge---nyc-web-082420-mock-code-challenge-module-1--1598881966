class Passenger
    attr_reader :name
    @@all = []
    def initialize (name)
        @name = name
        @@all<<self
    end
    def self.all
        @@all
    end
    def rides
        Ride.all.filter{|ride|ride.passenger == self}
    end
    def drivers
        rides.map{|ride|ride.driver}
    end
    def total_distance
        rides.map{|ride|ride.distance}.sum
    end
    def self.premium_members
        @@all.filter{|passenger|passenger.total_distance > 15.0}
    end


end