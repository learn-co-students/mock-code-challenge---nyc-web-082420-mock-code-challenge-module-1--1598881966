class Passenger 
    attr_accessor :name, :rides

    def initialize(name)
        @name = name 
        @rides = rides
    end 
    
     
    def passenger_drivers
        Driver.all.select {|driver| driver.rides.passenger == self }
    end 

    def Passenger_total_distance
        sum = 0 
        rides.each {|ride| sum += ride.distance}
        ride.distance += sum
        sum
        #iterate thru all rides, add up total distances of all rides, return sum??
    end 

    def self.all
        @@all 
    end 

    def Passenger.premium_members
        passenger.all 
        #go thru array of all passengers 
        #use select to find members who have gone >> 100 miles 
    end 

end 

# #### Passenger
# A Passenger should be initialized with a name as a string. After the Passenger has been initialized, it shouldn't be changed.
# - `Passenger#name`
#   - Returns the name of the passenger
# - `Passenger#rides`
#   - Returns an array of Ride instances that this person has been on
# - `Passenger#drivers`
#   - Returns an array of Driver instances that this person has rode with
# - `Passenger#total_distance`
#   - Returns the floating number that represents the total distance the passenger has travelled using the service
# - `Passenger.all`
#   - Returns an array of all Passengers
# - `Passenger.premium_members`
#   - Returns an array of all Passengers who have travelled over 100 miles in total with the service