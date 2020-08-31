class Driver

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all 
        @@all
    end 

    def passenger_names
    end 

    def rides
        Rides.all.select do |rides|
            rides.driver == self 
    end 

    def driver.all
    end 

    def .mileage_cap
    end 



    

end 
