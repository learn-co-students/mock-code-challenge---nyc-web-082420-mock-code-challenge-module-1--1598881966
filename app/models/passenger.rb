
#A Passenger has many rides
#------>A passenger will have many drivers THRU rides




class Passenger
    attr_reader :name #Name cannot be changed
    attr_accessor :driver, :ride
    @@all = []
    
    
    def initialize(name)
        @name = name
        @@all << self
        
    end


    def rides
        #Passenger#rides`
        #   - Returns an array of Ride instances that this person has been on
        Ride.all.select {|ride| ride.passenger == self}
    end

    def drivers
#         Passenger#drivers`
#   - Returns an array of Driver instances that this person has rode with
        Ride.all.select {|driver| driver.passenger == self}
    
    end

    def total_distance
    #    Returns the floating number that represents the total distance the passenger has travelled using the service
    total_distance = 0
    count = 0
    
        self.rides.map do |ele|
            while count < self.rides.length
                ele[distance] + ele[distance]
                count += 1
            end
            total_distance = ele[distance]
        end
        total_distance.to_f


    end

    def self.all
        @@all
    end

    def self.premium_members
        #returns an array of all Passengers who have travelled over 100 miles in total with the service
        self.all.select do |passenger| 
            if passenger.total_distance > 100
                p passenger
            else
                "Sorry, that passenger does not have premium access."
            end
    end

end