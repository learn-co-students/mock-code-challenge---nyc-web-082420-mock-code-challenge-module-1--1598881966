class Passenger

  attr_accessor
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select {|ride| ride.passenger == self}
  end

  def drivers
    driver_list = rides.map {|ride| ride.driver}
    driver_list.uniq
  end

  def total_distance
    total = 0
    rides.each do |ride|
      total += ride.distance
    end
    total
  end

  def self.premium_members
    Passenger.all.select {|passenger| passenger.total_distance > 100}
  end

end
