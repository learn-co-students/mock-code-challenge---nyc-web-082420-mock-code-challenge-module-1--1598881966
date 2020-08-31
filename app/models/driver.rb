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
        Ride.all.select {}
    end

    # drives method returns array of all rides driver has made
    def rides
        Ride.all.filter {|driver| drivre.name == self}
    end

    # class method all should return all Drivers
    def self.all
        @@all
    end

    #REVIEW - mileage_cap w/arg of distance returns array of all Drivers who drove over distance
    def self.mileage_cap(distance)
        Ride.all.filter{|distance| distance.driver >= distance.to_f}
    end
    
end
