# CLI Controller
class Tgots::CLI

	def call
		puts "Get the weather forecast from a Zipcode"
		menu
		goodbye
	end

	def menu
		puts "Please enter a Zipcode to get is weather or if done type exit:"
		input = nil
		while input != "exit"
			input = gets.strip.downcase
			x = Tgots::Zipcode.new(input)
			y = Tgots::Scraper.new
			days = y.scrape_five_day(x.url)
			binding.pry
		end
	end

	def goodbye
		puts "Come back later for a weather forecast update!!"
	end



end