
class Driver

    attr_reader :name
    attr_writer :passenger, :ride

    def initialize(name)
        @name = name.to_s
        @passenger = passenger
        @ride = ride
    end

end