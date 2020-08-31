class Ride

  attr_reader :driver, :passenger, :distance

  @@all = []

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance
    @@all << self
  end
  
  def self.all
    @@all
  end

  def self.average_distance
    # Returns the average distance across ALL rides
  end

end
