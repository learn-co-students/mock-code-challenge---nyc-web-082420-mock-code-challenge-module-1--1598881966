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
    #We have: the rides method containing the relationship from driver to passenger through Ride
    #We're looking at each element inside of an array which is an entire passenger instance
    #Once I have the passenger instance, I can perform .name to find their names
    def passenger_names(search_name)
        self.rides.filter {|passenger| passenger.name == search_name}.uniq
    end 

    #Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage
    #Conditional - if the drivers have gone over the cap, return them
    def self.mileage_cap(distance)
        if distance.driver > mileage_cap
        Ride.distance.map {|ride| ride.driver}.to_f
        end 
    end 

end