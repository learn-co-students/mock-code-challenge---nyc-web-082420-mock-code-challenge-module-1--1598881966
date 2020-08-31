class Passenger
    # attrs
    attr_reader :name
    # all
    @@all = []

    # initialize with name - can't be changed!
    def initialize(name)
        @name = name
    end

    # name method returns name
    def name
        @name
    end

    # rides method returns array of Ride instances passenger has been on

    # drivers method returns array of Driver instances passenger has rode with

    # total distance method returns floating number (total distance) passenger has travelled
    def total_distance
    end

    # class method all
    def self.all
        @@all
    end

    # class method premium members is an array of all passengers who travelled more than 100 mi
end
