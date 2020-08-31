require 'pry'

class Driver
    attr_reader :name
    attr_accessor :passenger_name, :ride, :milege_cap
    @@all = []

    def initialize(name, passenger_name, ride)
        @name = name
        @passenger_name = passenger_name
        @ride = ride
        @milege_cap = 0
        @@all << self
    end

    def self.all
        @@all
    end
   tom = Driver.new("Tom", "May", 3.2)
    dave = Driver.new("Dave", "Ben", 2.3)

end






binding.pry
