class Passenger 
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self  
    end

    def rides #works
        Ride.all.select { |ride| ride.passenger == self} 
    end 

    def drivers #works
        rides.map { |passenger| passenger.driver}
    end

    def total_distance #does not work
        total_distance_array = Ride.all.map { |total| total.distance == self}
        total_distance_array.inject(0) {|sum, n|  sum + n } / total_distance_array.size
    end


    def self.all #works
        @@all 
    end

    def self.premium_members #does not work until total_distance does
        Ride.all.select { |premium| premium.total_distance > 100}
    end


end
