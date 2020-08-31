class Driver
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @all
    end

    def name
        @name
    end
    def rides
        Ride.all.select{|ride| ride.driver == self}
    end

    def passenger_name
        self.rides.map{|passenger| passenger.passenger.name}

    end

    # def rides
    #     Ride.all.find{|ride| ride.driver == self}
    # end

    def self.mileage_cap(distance)
        self.all.distance > distance
    end

end
