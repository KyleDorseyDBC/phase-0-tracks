

#the client's name, age, number of children, decor theme
#Prompt the designer/user for all of this information.
	#Puts questions for each item and use gets.chomp to store it
puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp
puts "How many children do you have?"
children = gets.chomp
puts "Would you like a 90's themed home?(true or false)"
theme = gets.chomp

#Convert any user input to the appropriate data type.
	#Take the variables and insert them into a hash

#Print the hash back out to the screen when the designer has answered all of the questions.

#Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
  #Get user input, store or end program
  #if user dosent want to end take input convert string into symbol
  #Symbol at the key, ask to replace the value

#Print the latest version of the hash, and exit the program.