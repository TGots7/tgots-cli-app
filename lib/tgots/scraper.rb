require 'open-uri'
require 'Nokogiri'
require 'pry'


class Scraper

	def scrape_five_day(url)#enter zipcode url
		#scrape info and call day object to create days each loop
		counter = 1
		html = open(url)
		weather_page = Nokogiri::HTML(html)

		#unless counter == 6

		location = weather_page.css('#APP div div.fiveday.section-local-suite.page div.section-page-name div.hero.hero-background.layout-centered div.region.region-hero-top div.locations-title.five-day-page-title h1').text
		#twc-scrollabe table tbody
		day_i= "tr:nth-child(" + "#{counter}" + ") td:nth-child(2) div div span"
		date_i = "tr:nth-child(" + "#{counter}" + ") td:nth-child(2) div span"
		weather_i = "tr:nth-child(" + "#{counter}" + ") td.description span"
		high_i = "tr:nth-child(" + "#{counter}" + ") td.temp div span:nth-child(1)"
		rain_chance_i = "tr:nth-child(" + "#{counter}" + ") td.precip div span:nth-child(2) span"
		day = weather_page.css(day_i).text
		date = weather_page.css(date_i).text
		weather = weather_page.css(weather_i).text
		high = weather_page.css(high_i).text
		rain_chance = weather_page.css(rain_chance_i).text

		# tom_name = weather_page.css('tr:nth-child(2) td:nth-child(2) div div span').text
		# tom_date = weather_page.css('tr:nth-child(2) td:nth-child(2) div span').text
		# tom_weather = weather_page.css('tr:nth-child(2) td.description span').text
		# tom_high = weather_page.css('tr:nth-child(2) td.temp div span:nth-child(1)').text
		# tom_rain = weather_page.css('#twc-scrollabe table tbody tr:nth-child(2) td.precip div span:nth-child(2) span').text

		# thr_name = weather_page.css('#twc-scrollabe table tbody tr:nth-child(3) td:nth-child(2) div div span').text
		# thr_date = weather_page.css('#twc-scrollabe table tbody tr:nth-child(3) td:nth-child(2) div span').text
		# thr_weather = weather_page.css('#twc-scrollabe table tbody tr:nth-child(3) td.description span').text
		# thr_high = weather_page.css('#twc-scrollabe table tbody tr:nth-child(3) td.temp div span:nth-child(1)').text
		# thr_rain = weather_page.css('#twc-scrollabe table tbody tr:nth-child(3) td.precip div span:nth-child(2) span').text

		# for_name = weather_page.css('#twc-scrollabe table tbody tr:nth-child(4) td:nth-child(2) div div span').text
		# for_date = weather_page.css('#twc-scrollabe table tbody tr:nth-child(4) td:nth-child(2) div span').text
		# for_weather = weather_page.css('#twc-scrollabe table tbody tr:nth-child(4) td.description span').text
		# for_high = weather_page.css('#twc-scrollabe table tbody tr:nth-child(4) td.temp div span:nth-child(1)').text
		# for_rain = weather_page.css('#twc-scrollabe table tbody tr:nth-child(4) td.precip div span:nth-child(2) span').text

		# fiv_name = weather_page.css('#twc-scrollabe table tbody tr:nth-child(5) td:nth-child(2) div div span').text
		# fiv_date = weather_page.css('#twc-scrollabe table tbody tr:nth-child(5) td:nth-child(2) div span').text
		# fiv_weather = weather_page.css('#twc-scrollabe table tbody tr:nth-child(5) td.description span').text
		# fiv_high = weather_page.css('#twc-scrollabe table tbody tr:nth-child(5) td.temp div span:nth-child(1)').text
		# fiv_rain = weather_page.css('#twc-scrollabe table tbody tr:nth-child(5) td.precip div span:nth-child(2) span').text

		binding.pry
		url 
	end

end
url = "https://weather.com/weather/5day/l/14213:4:US"
x = Scraper.new
puts x.scrape_five_day(url)
