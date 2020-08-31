
#A Passenger has many rides
#------>A passenger will have many drivers THRU rides




class Passenger
    attr_reader :name #Name cannot be changed
    
    
    def initialize(name)
        @name = name
        @@all << self
        
    end
end