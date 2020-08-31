class Driver

    attr_reader :name
    attr_accessor :passenger_name, :rides
    @@all = []


    def initialize (name)
        @name = name
        @passenger_name = name
        @rides = rides
        @@all << self
    end

    def self
        @@all
    end

    def rides
        Ride.all.select {|ride| ride.driver == self}
    end

    def passenger_name
        rides.all.collect {|ride| ride.passenger}
    end

    def mileage_cap (distance)
        
    end

end

#so I know the code is broken, but ive created the connection between the "belongs to" whcih is my ride.rb
