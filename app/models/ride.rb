class Ride

  attr_accessor :driver, :passenger, :distance
  @@all = []

  def initialize(passenger, driver, distance)
    @passenger = passenger
    @driver = driver
    @distance = distance    #in miles
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    total_rides = Ride.all.length
    total_distance = 0
    Ride.all.each do |ride|
      total_distance += ride.distance
    end

    total_distance/total_rides

  end

end
