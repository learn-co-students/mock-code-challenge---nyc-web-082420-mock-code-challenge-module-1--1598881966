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
end

def ride_driver
end

def distance
end

def self.average_distance
end





end    
