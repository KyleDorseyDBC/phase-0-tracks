
# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words + " :)"
# 	end
# end

# irb(main):001:0> require_relative 'Shout'
# => true
# irb(main):002:0> Shout.singleton_methods
# => [:yell_angrily, :yelling_happily]
# irb(main):003:0> Shout.yelling_happily("Hello")
# => "Hello :)"



#Release 3

module Shout
	def what(int)
		int.times do
			puts "Whhhhhhaaattt!!!!"
		end
	end

	def angry(words)
		puts words.upcase + "!!!!!"
	end
end

class Road_rage
	include Shout
end

class Prison_officer
	include Shout
end


driver = Road_rage.new
driver.angry("Get out of my way")
driver.what(4)

puts "-------------------------------"
prison = Prison_officer.new
prison.angry("Get in line")



