require 'bundler/setup'
Bundler.require
require_all 'app'
require_relative "./app/models/passenger"

may = Passenger.new("May", "Tom", 23)
ben = Passenger.new("Ben", "Dave", 15)