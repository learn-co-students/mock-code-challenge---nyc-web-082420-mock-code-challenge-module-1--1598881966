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
    Ride.all.filter{ |variable| variable.passenger == self}.map{ |variable| variable }
  end

  def total_distance

  end

  def self.premium_members

  end

end
