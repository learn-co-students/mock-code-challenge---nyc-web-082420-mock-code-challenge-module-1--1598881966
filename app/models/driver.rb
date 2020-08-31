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

    def mileage_cap (distance)
        
    end

end

