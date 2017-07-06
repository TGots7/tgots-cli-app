# CLI Controller
class Tgots::CLI

	def call
		puts "Get the weather forecast from a Zipcode"
		zipcode
		display_5
		deeper
		goodbye
	end

	def zipcode
		#ask for zipcode for area, then scrape weather days
		puts "Please enter a Zipcode to get it's weather or if done type exit:"
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
		puts "#{days[0].location}"
		i = 0
		while i < 5 do
			puts "#{i + 1}. #{days[i].day} #{days[i].high}"
			i += 1
		end
	end

	def deeper
		days = Tgots::Day.all
		puts "For more detailed weather info enter the number for that day, or enter 'exit' to leave:"
		input = gets.strip
		
			num = input.to_i - 1
			puts "#{days[num].location} #{days[num].date}"
			puts "High: #{days[num].high}"
			puts "Weather: #{days[num].weather}"
			puts "Chance of rain: #{days[num].rain_chance}"
			puts "Humidity: #{days[num].humidity}"
			puts "Wind: #{days[num].wind}"
	end

	def goodbye
		puts "Come back later for a weather forecast update!!"
	end

end