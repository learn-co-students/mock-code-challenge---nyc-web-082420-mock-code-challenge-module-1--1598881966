class Driver 
    attr_reader :name 
    @@all = [] 

    def initialize(name)
        @name = name 
        @@all << self 
    end

    def self.all 
        @@all 
    end

    def passenger_names
        rides.select { |names| names.passenger}.uniq
    end

    def rides #works
        Ride.all.select { |ride| ride.driver == self}
    end

    def self.mileage_cap(distance)
        Ride.all.each do |cap| 
            if cap.distance > distance 
            cap.driver
            end
        end
    end



end








# #### Driver

# - `Driver#passenger_names`
#   - Returns an array of all Passengers' names a driver has driven. The names should be **unique** (no repeats).

# - `Driver.mileage_cap(distance)`
#   - Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage