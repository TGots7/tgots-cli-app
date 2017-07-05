require 'open-uri'
require 'Nokogiri'
require 'pry'


class Scraper

	def scrape_five_day(url)#enter zipcode url
		#returns array of days of weather, starting from today
		
		html = open(url)
		weather_page = Nokogiri::HTML(html)

		today_name = weather_page.css('#twc-scrollabe table tbody tr:nth-child(1) td:nth-child(2) div div span').text
		today_date = weather_page.css('#twc-scrollabe table tbody tr:nth-child(1) td:nth-child(2) div span').text
		today_weather = weather_page.css('#twc-scrollabe table tbody tr:nth-child(1) td.description span').text
		today_high = weather_page.css('#twc-scrollabe table tbody tr:nth-child(1) td.temp div span:nth-child(1)').text
		today_rain = weather_page.css('#twc-scrollabe table tbody tr:nth-child(1) td.precip div span:nth-child(2) span').text

		tom_name = weather_page.css('#twc-scrollabe table tbody tr:nth-child(2) td:nth-child(2) div div span').text
		tom_weather = weather_page.css('#twc-scrollabe table tbody tr:nth-child(2) td.description span').text
		tom_high = weather_page.css('#twc-scrollabe table tbody tr:nth-child(2) td.temp div span:nth-child(1)').text
		tom_rain = weather_page.css('#twc-scrollabe table tbody tr:nth-child(2) td.precip div span:nth-child(2) span').text

		thr_name = weather_page.css('#twc-scrollabe table tbody tr:nth-child(3) td:nth-child(2) div div span').text
		thr_weather = weather_page.css('#twc-scrollabe table tbody tr:nth-child(3) td.description span').text
		thr_high = weather_page.css('#twc-scrollabe table tbody tr:nth-child(3) td.temp div span:nth-child(1)').text
		thr_rain = weather_page.css('#twc-scrollabe table tbody tr:nth-child(3) td.precip div span:nth-child(2) span').text

		for_name = weather_page.css('#twc-scrollabe table tbody tr:nth-child(4) td:nth-child(2) div div span').text
		for_weather = weather_page.css('#twc-scrollabe table tbody tr:nth-child(4) td.description span').text
		for_high = weather_page.css('#twc-scrollabe table tbody tr:nth-child(4) td.temp div span:nth-child(1)').text
		for_rain = weather_page.css('#twc-scrollabe table tbody tr:nth-child(4) td.precip div span:nth-child(2) span').text

		fiv_name = weather_page.css('#twc-scrollabe table tbody tr:nth-child(5) td:nth-child(2) div div span').text
		fiv_weather = weather_page.css('#twc-scrollabe table tbody tr:nth-child(5) td.description span').text
		fiv_high = weather_page.css('#twc-scrollabe table tbody tr:nth-child(5) td.temp div span:nth-child(1)').text
		fiv_rain = weather_page.css('#twc-scrollabe table tbody tr:nth-child(5) td.precip div span:nth-child(2) span').text

		binding.pry
		url 
	end

end
url = "https://weather.com/weather/5day/l/14059:4:US"
x = Scraper.new
puts x.scrape_five_day(url)
