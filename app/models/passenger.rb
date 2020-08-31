require 'pry'


class Passenger
    attr_reader :name
    attr_accessor :premium_members, :driver, :total_distance
    @@all = []

    def initialize(name, driver,total_distance)
        @name = name
        @premium_members = nil
        @driver = driver
        @total_distance = total_distance.to_f
        @@all << self
    end

    def self.all
       @@all 
    end

    def name
       self.all. filter { |p| p.name == self}
    end

    def riders
    self.all.find_all { |t| t.total_distance == self}
    end

    may = Passenger.new("May", "Tom", 3.2)
    ben = Passenger.new("Ben", "Dave", 2.3)  

    binding.pry

end


