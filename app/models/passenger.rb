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

  def rides
    Ride.all.filter{|ride| ride.passenger == self}
  end

  def drivers
    rides.map{|ride| ride.driver}
  end

  def total_distance
    rides.sum{|ride| ride.distance}.round(2)
  end

  def self.premium_members
    @@all.filter {|pass| pass.total_distance > 100}

  end

end
