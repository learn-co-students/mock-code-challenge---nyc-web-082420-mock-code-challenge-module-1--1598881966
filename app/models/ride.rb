#A Ride belongs to a passenger and a driver


class Ride #SEAND:The entire time my console is saying that Ride's .all method is undefined which I cannot seem to find a solution to other than what I have. The other methods have no issue with their .all methods? 
    attr_accessor :driver, :passenger, :distance
    @@all = []
    
    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance.to_f
        @@all << self 
        
    end
    
    def self.all
        @@all
    end
    
    def passenger
        #Returns the Passenger object for that ride
        self.passenger
    end

    def driver
        #Returns the Driver object for that ride
        self.driver
    end

    def distance
        #Returns the distance of the ride
        self.distance

    end

    def self.average_distance
       #Returns the average distance across ALL rides
       

     end
    
    
end