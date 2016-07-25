


class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(1..100)
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


# christmas = Santa.new("male", "black")
# christmas.speak
# christmas.get_mad_at("Dasher")
# p christmas.gender = "female"
# p christmas.age
# p christmas.ethnicity


santas = []
gender = ["female", "male", "bi-gender", "other"]
ethnicity = ["black", "Latino", "Japanese", "white"]
cookie_types = ["chocolate", "raisin", "fudge"]
who_did_it = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
101.times do |index|
	new_santa = Santa.new(gender.sample, ethnicity.sample)
	new_santa.speak
	new_santa.eat_milk_and_cookies(cookie_types.sample)
	puts new_santa.celebrate_birthday
	puts new_santa.get_mad_at(who_did_it.sample)
end
























