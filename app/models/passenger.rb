class Passenger

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << name
  end

  def self.all
    @all
  end

  def rides
    Ride.all.filter{ |variable| variable.passenger == self}
  end

  def total_distance
    total = 0
    Ride.all.filter{ |variable| variable.passenger == self}.map{ |variable| total += variable.dis }
    total
  end

  def self.premium_members
    Ride.all.find_all{ |variable| variable.passenger if variable.dis > 100}
  end

end
