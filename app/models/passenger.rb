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
    #driver instances via rides
  end

  def total_distance
    # Returns the floating number that represents the total distance the passenger has travelled using the service
  end

  def self.premium_members
    # Returns an array of all Passengers who have travelled over 100 miles in total with the service
  end

end
