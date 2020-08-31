require_relative ' ..tools/console.rb'

class Driver
    # attrs
    attr_accessor :name

    # class variable all 
    @@all = []

    # should be initialized with name
    def initialize(name)
        @name = name
        @@all << self
    end

    #name method returns name
    def name
        @name
    end

    # REVIEW - passenger names method returns array of all Passenger names driver has driven. Should be uniq
    def passenger_names
        Ride.all.select {|passenger| passenger.driver == self}
    end

    # drives method returns array of all rides driver has made
    def rides
        Ride.all.filter {|driver| driver.name == self}
    end

    # class method all should return all Drivers
    def self.all
        @@all
    end

    #REVIEW (unsure of syntax) - mileage_cap w/arg of distance returns array of all Drivers who drove over distance
    def self.mileage_cap(distance)
        Ride.all.filter{|driver| driver.distance > distance}
    end
    
end
