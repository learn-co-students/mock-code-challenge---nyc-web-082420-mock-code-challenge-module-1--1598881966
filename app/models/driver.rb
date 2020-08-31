require_relative "./ride.rb"

Class Driver

@@all = []

attr_reader :name

def initialize(name)
@name = name
end

def Driver_name
@name = name
end

def passenger_names
    passenger_names = self
    all << self
end

def driver_rides
    driver_rides = self
    all << self
end
end

def Driver_Listing
Driver.collect do |d|
d.driver == self
@@all << self
end

def Driver_mileage_cap
while Driver.each do |d|.include?()
@@all << self
end
