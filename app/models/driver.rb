#A Driver has many rides
#----->A driver will have many passengers THRU rides

# require 'pry'
# # require_relative './app/models/passenger.rb'
# # require_relative './app/models/ride.rb'


class Driver
    attr_reader :name
    attr_accessor :passenger, :ride
    @@all = []
    
    
    def initialize(name)
        @name = name
        @@all << self
        
    end

    def passenger_names(driver)
        #Returns an array of all Passengers' names a driver has driven. The names should be **unique** (no repeats).
        Ride.all.select{|passenger| passenger.name == driver}
        

    end

    def rides(driver)
        #Returns an array of all Rides a driver has made
        Ride.all.select{|ride| driver.ride == driver}
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        #Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage

    end


end