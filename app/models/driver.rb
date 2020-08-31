class Driver
    attr_accessor :name, :passenger
    @@all = []
    def initialize(name, passenger)
        @name = name
        @passenger = passanger
        @@all << self
    end
    def self.all
        @@all
    end
    def name
        self.name
    end
    def passenger_names
        self.Passenger.all.map{|passanger|passanger.uniq}
    end
    def self.mileage_cap(distance)
        cap = self.Ride.distance
        cap.all.map {|driver| driver>distance = true}
    end
end
