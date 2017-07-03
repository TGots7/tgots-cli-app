class Tgots::People

	attr_accessor :name, :age, :location, :url

	def self.today_people
		#return people
		puts <<-DOC
			1. Tyler Gotto is the fucking king of the world
			2. Grace Gotto is a nerd
		DOC

		person_1 = self.new
		person_1.name = "Tyler"
		person_1.age = "32"
		person_1.location = "Elma"
		person_1.url = "tylergotto.wiki"



		person_2 = self.new
		person_1.name = "Grace"
		person_1.age = "27"
		person_1.location = "Elma"
		person_1.url = "gracegotto.wiki"



		[person_1, person_2]
	end

end