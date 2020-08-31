
class Passenger
    attr_reader :name

    @@all = []

    def initialize (name)
        @name = name

        @@all<<self
    end

    def self.all
        @@all = all
    end

    def passenger_name
        @name
    end

    def total_distance
        self.passenger_rides.map{|rides|rides.distance}.sum
    end

    def passenger_rides
        Ride.all.select{|rides| rides.passenger == self}
    end

    def drivers
        self.passenger_rides.map{|rides|rides.driver}
    end

    def self.premium_members
        self.all.select{|pass| pass.total_distance > 100}
    end



end