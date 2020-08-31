class Driver 
    attr_reader :name 
    @@all = [] 

    def initialized(name)
        @name = name 
        @@all << self 
    end

    def self.all 
        @@all 
    end

    def passenger_names

    end

    def rides 
        Ride.all.select { |ride| ride == self}
    end

    def self.mileage_cap(distance)
    end



end








# #### Driver

# - `Driver#passenger_names`
#   - Returns an array of all Passengers' names a driver has driven. The names should be **unique** (no repeats).

# - `Driver.mileage_cap(distance)`
#   - Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage