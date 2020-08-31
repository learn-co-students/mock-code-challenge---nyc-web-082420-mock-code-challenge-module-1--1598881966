class Passenger
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.premium_members
    self.all.filter{|passenger| passenger.total_distance > 100}
  end

  def rides
    Ride.all.filter{|ride| ride.passenger == self}
  end

  def drivers
    self.rides.map{|ride| ride.driver}
  end

  def total_distance
    self.rides.sum{|ride| ride.distance}.to_f
  end


end
