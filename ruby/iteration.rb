

# def names
# 	name1 = "chris"
# 	name2 = "kyle"
# 	puts "who is in here?"
# 	yield(name1, name2)
# end


# puts names{ |name1 , name2| "#{name1} and #{name2} are partners"}

letters = ["a","b","c"]

info = {name: "Chris", hometown: "Sewers of NY", favorite_food: "pizza"}


p letters
letters.map! do |letter|
	letter.next
end
p letters

letters.each do |letter|
	puts letter
end