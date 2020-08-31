class Ride

  attr_accessor :driver, :passenger
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



end
