#### Passenger
# XXXA Passenger should be initialized with a name as a string. After the Passenger has been initialized, it shouldn't be changed. 
# XXX- `Passenger#name` - Returns the name of the passenger
# XXX`Passenger#rides` - Returns an array of Ride instances that this person has been on
# XXX`Passenger#drivers` - Returns an array of Driver instances that this person has rode with
# XXX `Passenger#total_distance` - Returns the floating number that represents the total distance the passenger has travelled using the service
# XXX- `Passenger.all` - Returns an array of all Passengers
# XXX `Passenger.premium_members` - Returns an array of all Passengers who have travelled over 100 miles in total with the service

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

    def rides
        Ride.all.select { |ride| ride.passenger == self }
    end

    def drivers
        self.rides.map { |ride| ride.driver }.uniq
    end

    def total_distance
        #rounding distance to nearest tenth mile
        #question for later - is it OK to chain these methods or is it better practice to split into 2 different methods
        distance = self.rides.map { |ride| ride.distance }.reduce(0) { |sum, n| sum + n }.round(1)
    end

    def self.premium_members
        self.all.select { |pass| pass.total_distance > 100 }
    end

end