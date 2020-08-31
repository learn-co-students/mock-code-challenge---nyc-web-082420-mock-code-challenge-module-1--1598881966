class Driver
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
        Ride.all.select { |ride| ride.driver == self }
    end    

    def passenger_names
        self.rides.map { |ride| ride.passenger.name }.uniq
    end    

    def total_distance
        distances = self.rides.map { |ride| ride.distance }
        distances.sum
    end  

    def self.milage_cap(distance)
        self.all.select { |driver| driver.total_distance > distance }
    end    


end    


