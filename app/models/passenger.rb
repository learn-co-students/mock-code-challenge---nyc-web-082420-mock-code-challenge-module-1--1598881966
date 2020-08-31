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

    # REVIEW - rides method returns array of Ride instances passenger has been on
    Ride.all.select{|rides| rides.passenger == self}

    # REVIEW - drivers method returns array of Driver instances passenger has rode with
    Ride.all.select{|driver| driver.passenger == self}

    # total distance method returns floating number (total distance) passenger has travelled
    # iterate through ride.all and for each time passenger has ridden, increase and eturn total distance
    def total_distance
        total = 0 #will be incrementing as we iterate through array
        Ride.all.each do |passenger| #iterate through array
            if passenger.name == self #set conditional so only looking at instance of self
            passenger.distance += total #review syntax of to_f
            end
        end
        total.to_f
    end

    # class method all
    def self.all
        @@all
    end

    # class method premium members is an array of all passengers who travelled more than 100 mi
    def self.premium_members
        self.total_distance.filter do |passenger_instance|
            passenger_instance.total_distance > 100
        end
    end

end
