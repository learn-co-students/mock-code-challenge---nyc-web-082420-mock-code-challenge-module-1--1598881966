class Driver 
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end 

    def passenger_names
        Passenger.all.select{|passenger|}
        #want to get the rides array, iterate thru and select passenger name for each ride**
    end 

    def self.mileage_cap(distance)
        
        #need array of drivers, iterate over all drivers rides, 
        #find drivers whose distance is greater >> than the distance being checked?? 
        #this method is confusing 
    end 
end 

# #### Driver
# A Driver should be initialized with a name as a string.
# - `Driver#name`
#   - Returns the driver's name
# - `Driver#passenger_names`
#   - Returns an array of all Passengers' names a driver has driven. The names should be **unique** (no repeats).
# - `Driver#rides`
#   - Returns an array of all Rides a driver has made
# - `Driver.all`
#   - Returns an array of all Drivers
# - `Driver.mileage_cap(distance)`
#   - Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage