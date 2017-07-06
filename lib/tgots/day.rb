require 'pry'

class Tgots::Day

 attr_accessor :day, :location, :date, :weather, :high, :rain_chance, :humidity, :wind
 @@all = []

 def initialize(day, location, date, weather, high, rain_chance, humidity, wind)
 	@day = day
 	@location = location
 	@date = date
 	@weather = weather
 	@high = high
 	@rain_chance = rain_chance
 	@humidity = humidity
 	@wind = wind
 	@@all << self
 end

 def self.all
 	@@all
 end

end
