class Passenger
    attr_reader :name

    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end    

    def self.all
        @@all
    end    

    def rides
        Rides.all.select { |ride| ride.passenger == self }
    end    

    def drivers
        self.rides.map { |ride| ride.driver }
    end
    
    def total_distance
        #
    end  
    
    def self.premium_members
        #
    end
        
end    
