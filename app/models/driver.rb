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

    def total_distance
        rides.map{|r| r.distance}.sum
    end

    def self.mileage_cap(distance)    #created total_distance method to get this to work to refactor better and ensure single responsibilty princle instead writing both methods in one
        self.all.select{|d| d.total_distance > distance}
    end
end

