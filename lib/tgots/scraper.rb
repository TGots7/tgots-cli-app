require 'open-uri'
require 'Nokogiri'
require 'pry'

class Tgots::Scraper

 def scrape_five_day(url)#enter zipcode url
		#scrape info and call day object to create days each loop
	
	counter = 1
	html = open(url)
	weather_page = Nokogiri::HTML(html)

	until counter == 6
 	
		location = weather_page.css('#APP div div.fiveday.section-local-suite.page div.section-page-name div.hero.hero-background.layout-centered div.region.region-hero-top div.locations-title.five-day-page-title h1').text
		#twc-scrollabe table tbody
		day_i= "tr:nth-child(" + "#{counter}" + ") td:nth-child(2) div div span"
		date_i = "tr:nth-child(" + "#{counter}" + ") td:nth-child(2) div span"
		weather_i = "tr:nth-child(" + "#{counter}" + ") td.description span"
		high_i = "tr:nth-child(" + "#{counter}" + ") td.temp div span:nth-child(1)"
		rain_chance_i = "tr:nth-child(" + "#{counter}" + ") td.precip div span:nth-child(2) span"
		wind_i = "tr:nth-child(" + "#{counter}" + ") td.wind span"
		humidity_i = "tr:nth-child(" + "#{counter}" + ") td.humidity span span"

		day = weather_page.css(day_i).text
		date = weather_page.css(date_i).text
		weather = weather_page.css(weather_i).text
		high = weather_page.css(high_i).text
		rain_chance = weather_page.css(rain_chance_i).text
		wind = weather_page.css(wind_i).text
		humidity = weather_page.css(humidity_i).text

		Tgots::Day.new(day, location, date, weather, high, rain_chance, humidity, wind)
		
		counter += 1
	end
 end

end
