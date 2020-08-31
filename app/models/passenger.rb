
class Passenger

    attr_reader :name

    @@all = []


    def initialize(name)
        @name = name
        @@rides = []

    end

    def rides
        Rides.all.select { |ride| ride.}
    end








end
