class Passenger

attr_reader :name
@@all = []

def initalize(name)
    @name = name
    @@all << self
end

def self.all
    @@all
end

def name
    puts "Passenger name is #{@name}."
end

def rides
end

def drivers
end

def total_distance
end

def self.all
end

def self.premium_memebers



end   
