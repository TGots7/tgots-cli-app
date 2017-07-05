require 'pry'

class Day

 attr_accessor :day, :location, :date, :weather, :high, :rain_chance
 @@all = []

 def initialize(day, location, date, weather, high, rain_chance)
 	@day = day
 	@location = location
 	@date = date
 	@weather = weather
 	@high = high
 	@rain_chance = rain_chance
 	@@all << self
 end

 def self.all
 	@@all
 end




end
