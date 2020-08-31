class Driver

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
    Ride.all.filter{|ride| ride.driver == self}
  end

  def passenger_names
    passenger_names = rides.map{|ride| ride.passenger.name }
    passenger_names.uniq
  end

  def mileage
    rides.sum{|ride| ride.distance}
  end

  def self.mileage_cap(distance)
    @@all.filter{|driver| driver.mileage > distance}
  end

end
