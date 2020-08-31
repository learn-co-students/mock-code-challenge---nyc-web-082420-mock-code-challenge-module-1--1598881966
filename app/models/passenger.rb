class Passenger
    attr_reader :name
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select{|r| r.passenger == self}
    end

    def drivers
        rides.map{|r| r.driver}
    end

    def total_distance
        rides.map{|r| r.distance}.sum
    end

    def self.all
        @@all
    end

    def self.premium_members

    end
end

