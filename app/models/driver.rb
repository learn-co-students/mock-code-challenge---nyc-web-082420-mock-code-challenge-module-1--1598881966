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

  end

  def rides

  end

  def mileage_cap(distance)

  end


end
