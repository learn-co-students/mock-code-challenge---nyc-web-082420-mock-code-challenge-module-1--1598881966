class Ride

  attr_accessor :passenger, :driver, :dis

  @@all = []

  def initialize(driver, passenger, dis)
    @passenger = passenger
    @driver = driver
    @dis = dis.to_i
    @@all << self
  end

  def self.all
    @@all
  end

  def driver
    @@all.filter{ |variable| variable.passenger == self}.map{ |variable| variable.driver }
  end

  def distance
    @@all.filter{ |variable| variable.passenger == self}.map{ |variable| variable.distance}
  end

def self.average_distance
  total = 0
  i = 0
  @@all.each{ |variable| total+=variable.dis}
  aver = total /@@all.count
  aver
end
end
