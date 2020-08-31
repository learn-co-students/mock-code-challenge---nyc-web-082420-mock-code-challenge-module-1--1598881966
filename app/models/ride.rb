class Ride
    @@all= []

def initalize (driver, passenger)
    @driver = driver
    @passenger = passenger
    @@all << self
end 

def passenger
    Passenger.all.select {|P| p.passenger == self}
end 
