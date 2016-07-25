


class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}" 
	end

	def celebrate_birthday
		@age = age + 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking = @reindeer_ranking.delete_if {|name| name == reindeer}
		@reindeer_ranking = @reindeer_ranking.push(reindeer)
	end

end

# christmas = Santa.new
# christmas.speak
# christmas.eat_milk_and_cookies("chocolate chip")

# santas = []
# gender = ["female", "male", "bi-gender", "other"]
# ethnicity = ["black", "Latino", "Japanese", "white"]
# gender.length.times do |index|
# 	santas << Santa.new(gender[index], ethnicity[index])
# end
# p santas

christmas = Santa.new("male", "black")
christmas.speak
christmas.get_mad_at("Dasher")
p christmas.gender = "female"
p christmas.age
p christmas.ethnicity