class Passenger 
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self  
    end

    def rides 
        Ride.all.select { |ride| ride == self} 
    end 

    def drivers
        Driver.all.select { |driver| driver == self}
    end

    def total_distance
    end


    def self.all
        @@all 
    end

    def self.premium_members
        self.all.select { |premium| premium.total_distance > 100}
    end


end







# - `Passenger#total_distance`
#   - Returns the floating number that represents the total distance the passenger has travelled using the service