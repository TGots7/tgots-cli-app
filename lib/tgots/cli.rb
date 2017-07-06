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
		end
		zip = Tgots::Zipcode.new(input)
		w = Tgots::Scraper.new
		w.scrape_five_day(zip.url)
			#Tgots::Day.all
			
	end

	def display_5
		days = Tgots::Day.all
		puts "#{days[0].location}"
		i = 0
		while i < 5 do
			puts "#{i + 1}. #{days[i].day} #{days[i].high}"
			i += 1
		end

		# puts "1. #{days[0].day} #{days[0].high}"
		# puts "2. #{days[1].day} #{days[1].high}"
		# puts "3. #{days[2].day} #{days[2].high}"
		# puts "4. #{days[3].day} #{days[3].high}"
		# puts "5. #{days[4].day} #{days[4].high}"
	end

	def deeper
		puts "If you would like more weather information for a day, enter the index number for that day, or exit to leave:"
		input = gets.strip
		


	end

	def goodbye
		puts "Come back later for a weather forecast update!!"
	end



end