require 'pry'
require_relative './driver.rb'
require_relative './passenger.rb'

Class Ride
@@all = []

attr_accessor   :driver, :passenger, :distance

def initialize(driver, passenger, distance=0)
@driver = driver
@passenger = passenger
@@all = self
@all << self
end

def Ride_passenger
    @self = passenger
end

def Ride_driver
    @self = driver
end

def Ride_distance
    @self = ride_distance
end
end

ride_passenger = Ride.new("___")