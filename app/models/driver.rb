class Driver

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @all
  end

  def passenger_name
    Ride.all.find_all{ |variable| variable.passenger if variable.driver ==self}.collect{ |variable| variable.passenger }
  end

  def rides
    Ride.all.find_all{ |variable| variable if variable.driver ==self}
  end

  def mileage_cap(distance)
    Ride.all.find_all{ |variable| variable if variable.dis > distance}
  end


end
