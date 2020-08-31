class Passenger

    attr_reader :name
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all 
    end 

    #return array of Ride instances that this person has been on
    def rides
        Ride.all.filter {|ride| ride.passenger == self}
    end 

    #Return array of Driver instances that this person has rode with
    #we have a rides method - telling us all the rides a passenger has been on - now we need to map to find the drivers
    def drivers
        self.rides.map {|ride| ride.driver}
    end 

    #Returns the floating number that represents the total distance the passenger has travelled using the service
    #.reduce will generate a sum
    def total_distance
        distance.reduce(0.0) {|sum, num| sum + num}.to_f / distance.size
    end 

    #Returns an array of all Passengers who have travelled over 100 miles in total with the service
    def self.premium_memebers
        self.all.filter {|pm| pm.total_distance > 100}
    end 

end 