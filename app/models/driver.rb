class Driver
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
    end

    def name
        @name
    end

    def passenger_name

    end

    def rides
        Ride.all.find{|ride| ride.driver == self}
    end

end
