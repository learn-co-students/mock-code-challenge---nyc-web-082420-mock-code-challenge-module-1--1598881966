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
    total_distance = self.all.sum{|ride| ride.distance}
    average=total_distance/self.all.length
    average.round(2)
  end

end
