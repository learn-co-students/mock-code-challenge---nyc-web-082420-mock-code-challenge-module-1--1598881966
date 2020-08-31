class Passenger
    
    attr_reader :name

    @@all = []

    def initialize(name)
        # should be initialized with a name as a string. After the Passenger has been initialized, it shouldn't be changed.
        # - `Passenger#name`
        @name = name
        @@all << self
    end

    def self.all
        #   - Returns an array of all Passengers
        @@all
    end

    def rides
        # array of all rides ive(instance) been on
        p "#{self.name}, you have been on these rides:"
        Ride.all.select {|ride| ride.passenger == self}
    end

    def drivers
        # array of all driers ive(instance) had
        # yuck. Im determined to figure a pleasant way to list!
        "#{self.name}, you have had these drivers:"
        self.rides.map {|ride| ride.driver}.uniq
        # with names returned as strings in array
        # jake.rides.map {|ride| ride.driver.name}.uniq
    end

    def total_distance
        # total distance of my rides
        # i like when it looks nice in terminal, maybe it looks better in mac terminal. VSCode shows white and red text :(
        "#{self.name}, you have riden this many miles:"
        Ride.all.select {|ride| ride.passenger == self}.map {|ride| ride.distance}.sum
    end

    def self.premium_members
        # - `Passenger.premium_members`
        #   - Returns an array of all Passengers who have travelled over 100 miles in total with the service
        total = Ride.all.map {|ride| ride.passenger}.map {|ride| ride.total_distance}.uniq
        # I think in only need this second code. Unsure if I could use variables to lessen the time issue of .map.find_all.uniq
        each_passenger = Ride.all.map {|ride| ride.passenger}.find_all {|passenger| passenger.total_distance > 100}.uniq #this one works for deliverables
        passenger_name = each_passenger.map{|passenger|"#{passenger.name}, with #{passenger.total_distance.round(1).to_s} miles"}
        "These are our passengers who have riden over 100 miles: #{passenger_name.join(", ")}"
    end
    
end