class Driver
    attr_accessor :name  #README didn't specify if name was not to be changed so accessor just in case to change. If meant not to change then should be attr_reader
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def passenger_names
        rides.map{|r| r.passenger.name}.uniq
    end

    def rides
        Ride.all.select{|r| r.driver == self}
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        
    end
end

