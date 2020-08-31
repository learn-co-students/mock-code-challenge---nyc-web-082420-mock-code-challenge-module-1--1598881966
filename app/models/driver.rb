

class Driver

    attr_accessor :name
    attr_reader :ride

    @@all = []



    def initialize(name)
        @name = name
        @@passengers = []
    end

    def passenger_names
        Ride.all.select { |passenger| passenger.driver == self}
    end

    def rides 


    end



end