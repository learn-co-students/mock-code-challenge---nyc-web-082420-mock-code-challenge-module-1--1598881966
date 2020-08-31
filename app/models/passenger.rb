
class Passenger
    attr_reader :name
    attr_accessor :rides, :drivers, :total_distance
    @@all = []

    def initialize (name)
        @name = name
        @ride = ride
        @drivers = drivers
        @total_distance = 0
        @@all << self
    end

    def self
        @@all
    end

    def rides
        Ride.all.select {|ride| ride.passenger == self}
    end

    def drivers
        rides.all.collect {|ride| ride.drivers}
    end

    def total_distance
    end


    def preimum_members
        if Passenger.new > 0 miles && Passenger.new < 100
            passanger
        else preimum_members
    end




end

#so I know the code is broken, but ive created the connection between the "belongs to" whcih is my ride.rb

