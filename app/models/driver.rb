class Driver

    attr_reader :name
        @@all=[]

    def initialize (name)
        @name = name
        @@all<<self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.filter{|ride|ride.driver == self}
    end

    def passenger_names
        rides.map{|ride|ride.passenger.name}.uniq
    end
    
    def total_distance
        rides.map{|ride|ride.distance}.sum   #moved this from passenger class to use as helper here since it worked for premium members on passenger
    end

    def self.mileage_cap(distance)
        @@all.filter{|driver|driver.total_distance > distance}
    end

end

