# CLI Controller
class Tgots::CLI

	def call
		puts "\n\n\t***********************************************\n"
		puts "\t*\s\s\s\s\s\s\sWelcome to Weather via Zipcode\s\s\s\s\s\s\s\s*\n"
		puts "\t***********************************************"
		zipcode
		display_5
		deeper
		goodbye
	end

	def zipcode
		#ask for zipcode for area, then scrape weather days
		puts "\nEnter a Zipcode to view it's 5 day weather forecast or 'exit':"
		input = nil
		input = gets.strip.downcase
		if input == "exit"
			goodbye
			exit
		end
		zip = Tgots::Zipcode.new(input)
		w = Tgots::Scraper.new
		w.scrape_five_day(zip.url)
	end

	def display_5
		days = Tgots::Day.all
		puts "\t#{days[0].location}"
		i = 0
		while i < 5 do
			puts "\t#{i + 1}. #{days[i].day} #{days[i].high}"
			i += 1
		end
	end

	def deeper
		days = Tgots::Day.all
		puts "\nFor more detailed weather enter the number for the day, or 'exit' to leave:"
		input = gets.strip
		if input == 0..5
			num = input.to_i - 1
			puts "\t#{days[num].location} #{days[num].date}"
			puts "\tHigh: #{days[num].high}"
			puts "\tWeather: #{days[num].weather}"
			puts "\tChance of rain: #{days[num].rain_chance}"
			puts "\tHumidity: #{days[num].humidity}"
			puts "\tWind: #{days[num].wind}"
		else
			return nil
		end
	end

	def goodbye
		puts "\nCome back later for a weather forecast update!!\n"
	end

end