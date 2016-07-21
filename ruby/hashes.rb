

#the client's name, age, number of children, decor theme
#Prompt the designer/user for all of this information.
	#Puts questions for each item and use gets.chomp to store it
puts "What is your name?"
input_name = gets.chomp

puts "How old are you?"
input_age = gets.chomp.to_i

puts "How many children do you have?"
input_children = gets.chomp.to_i

puts "Would you like a 90's themed home?(true or false)"
input_theme = gets.chomp.eql?("true")

#Convert any user input to the appropriate data type.
	#Take the variables and insert them into a hash
client_info = {
	:name => input_name,
	:age => input_age,
	:children => input_children,
	:theme => input_theme
}


#Print the hash back out to the screen when the designer has answered all of the questions.
client_info.each do |field, response|
	puts "#{field}: #{response}"
end
#Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
  #Get user input, store or end program
  #if user dosent want to end take input convert string into symbol
  #Symbol at the key, ask to replace the value
corrected_input = false
until corrected_input == true
	puts "Would you like to change an input? Type the category that contains the input you would like to change or type 'exit'"
	revision = gets.chomp
	if revision == "name"
		puts "Enter a new name"
		new_name = gets.chomp
		client_info[:name] = new_name
		corrected_input = true
	elsif revision == "age"
		puts "Enter a new age"
		new_age = gets.chomp.to_i
		client_info[:age] = new_age
		corrected_input = true
	elsif revision == "children"
		puts "Enter a new number of children"
		new_children = gets.chomp.to_i
		client_info[:children] = new_children
		corrected_input = true
	elsif revision == "theme"
		puts "Do you want a 90's theme?(true or false)"
		new_theme = gets.chomp.eql?("true")
		client_info[:theme] = new_theme
		corrected_input = true
	else
		puts "You entered everything in correctly the first time."
		corrected_input = true
	end
end


client_info.each do |field, response|
	puts "#{field}: #{response}"
end





#Print the latest version of the hash, and exit the program.