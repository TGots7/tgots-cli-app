# CLI Controller
class Tgots::CLI

	def call
		puts "Today best tgots"
		list_people
		menu
		goodbye
	end

	def list_people
		puts "List of People"
		@all = Tgots::People.today_people
	end

	def menu
		puts "Enter the number of the deal you would like more info on:"
		input = nil
		while input != "exit"
			input = gets.strip.downcase
			case input
			when "1"
				puts "more info"
				puts "Chose another list number for info or type exit to leave"
			when "2"
				puts "more info"
				puts "Chose another list number for info or type exit to leave"
			end
		end
	end

	def goodbye
		puts "See you tomorrow for more deals!!!"
	end



end