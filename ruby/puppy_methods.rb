#Release 1

# class Puppy
# 	def initialize
# 		puts "Initializing new puppy instance..."
# 	end

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   def speak(num)
#   	num.times {puts "Woof!"}
#   end

#   def roll_over
#   	puts "*rolls over*"
#   end
   	
#   def dog_years(age)
#   	puts age * 7
#   end

#   def shake
#   	puts "The dog shook your hand"
#   end
# end

# dog = Puppy.new
# dog.fetch("ball")
# dog.speak(3)
# dog.roll_over
# dog.dog_years(2)
# dog.shake

#Release 2

class Computer
	def initialize
		puts "Booting up the computer"
	end

	def play_music
		puts "Plays computer intro song"
	end

	def user_name(name)
		puts "Hello #{name}"
	end
end

computers = []
name = ["Jimmy", "Sam", "Bob", "Rachel"]
number_of_computers = 50

number_of_computers.times do 
	computers << Computer.new
end

computers.each do |comp|
	comp.play_music
	comp.user_name(name.sample)
end




















