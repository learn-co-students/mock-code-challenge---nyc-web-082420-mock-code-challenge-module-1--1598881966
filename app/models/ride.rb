class Ride

attr_accessor :driver, :passenger, :distance
@@all = []
def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance
    @@all << self
end

def self.all
    @@self
end

def ride_passenger
    #the passenger who is riding
end

def ride_driver
end

def distance
    ride.distance
end

def self.average_distance
    ride.all.average
end





end    
