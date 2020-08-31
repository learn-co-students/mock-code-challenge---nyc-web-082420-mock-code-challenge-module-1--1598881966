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
    Ride.all.select {|ride| ride.driver == self}
  end

  def passenger_names
    passenger_list = rides.map {|ride| ride.passenger}
    passenger_list.uniq
  end

  def self.mileage_cap(distance)
    #assuming this is total miles driven, not a single ride cap
    Driver.all.select do |driver|
      driver.total_distance_driven > distance
    end
  end

  def total_distance_driven
    total = 0
    rides.each do |ride|
      total += ride.distance
    end
    total
  end

end
