
class Driver

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def passenger_names
        # Returns an array of all Passengers' names a driver has driven. 
        # The names should be **unique** (no repeats). (use .unique? maybe?)
    end

    def rides
        
    end


end