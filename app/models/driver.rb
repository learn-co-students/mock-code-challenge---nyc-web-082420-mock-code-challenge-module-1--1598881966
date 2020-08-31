class Driver
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.mileage_cap(distance)
    self.all.filter{|driver| driver.driver_total_mile > distance}
  end

  def rides
    Ride.all.filter{|ride| ride.driver == self}
  end

  def passenger_names
    self.rides.map{|ride| ride.passenger}.uniq
  end

  def driver_total_mile
    self.rides.sum{|ride| ride.distance}
  end
end
