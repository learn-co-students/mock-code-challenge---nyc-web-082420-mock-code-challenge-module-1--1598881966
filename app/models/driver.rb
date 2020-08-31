class Driver

    attr_accessor :name
    @@all =[]

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all 
    end 

    #Returns an array of all Rides a driver has made
    def rides
        Ride.all.filter {|ride| ride.driver == self}
    end 

    #Return array of all Passengers' names a driver has driven. The names should be **unique** (no repeats).
    #we have: a rides array that contains all the rides a driver has made and will also contain all the passengers a la rides holds the ref
    #map through rides to get passenger names 
    def passenger_names
        self.rides.map {|pname| pname.driver}.uniq
    end 

end 



# - `Driver#passenger_names`
#   - Returns an array of all Passengers' names a driver has driven. The names should be **unique** (no repeats).


# - `Driver.mileage_cap(distance)`
#   - Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage
