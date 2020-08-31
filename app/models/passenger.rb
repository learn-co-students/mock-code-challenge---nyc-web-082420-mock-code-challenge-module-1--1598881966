class Passenger

    attr_accessor :name, :rides, :drivers 
    attr 

    @@all = []

    def initialize(name, rides, drivers)
        @name = name 
        @rides = rides
        @drivers = drivers 
        @@all << self 
    end 

    def self.all 
        @@all
    end 

    def rides               #returns an array of all ride instances
        Ride.all.select do |ride|
            ride.passenger = self 
        end 
    end 

    def drivers  #should return array of driver instances through ride 
        Ride.map do |ride|
            ride.driver 
        end 
    end 

    def total_distance(miles)
        total_distance += miles.sum 
    end 

    def premium_members
        if self.total_distance > 100 
            <<
    end 




end 

