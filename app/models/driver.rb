class Driver
attr_accessor :name
@@all = []

    def initialize(name)
        @name = name
        @@all <<self
    end

    def self.all
        @@all 
    end

    def name
        puts "Driver's name is #{@name}."
    end

    def passenger_names
        passenger.all.uniq
    end
    
    def rides
        ride.all
    end

    def self.mileage_cap(distance)
        #driver distance driven > distance 
        #then have to .map (to return array of drivers)

end
