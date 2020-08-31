class Passenger

attr_reader :name
@@all = []

def initalize(name)
    @name = name
    @@all << self
end

def self.all
    @@all
end

def name
    puts "Passenger name is #{@name}."
end

def rides
    #self.ride.all
end

def drivers
    #In rides, who were my drivers (array)
    #ride.drivers.map?
end

def total_distance
    #all my rides, what is the distance of each. add those distance
    #rides.distance.
end

def self.all
end

def self.premium_memebers
    #for all passenger with miles > 100
end



end   
