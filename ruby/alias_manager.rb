
#Spy Name Creator
def encrypted_vowel(vowel)
	vowels = "aeioua"
	current_index = vowels.index(vowel)
	previous_index = current_index + 1
	encrypted_letter = vowels[previous_index]
	encrypted_letter
end

def encrypted_consonants(consonant)
	consonants = "bcdfghjklmnpqrstvxyzb"
	current_index = consonants.index(consonant)
	previous_index = current_index + 1
	encrypted_letter = consonants[previous_index]
	encrypted_letter
end	

def name_swapper(name)
	name_array = name.downcase.split(' ')
	swapped_name = name_array[1] + " " + name_array[0]
	swapped_name
end

def name_converter(name)
	swapped_name = name_swapper(name)
	vowels = "aeioua"
	consonants = "bcdfghjklmnpqrstvxyzb"
	result = ""
	swapped_name.chars.each do |character|
		if vowels.include?(character)
			result += encrypted_vowel(character)
		elsif consonants.include?(character)
			result += encrypted_consonants(character)
		else
			result += character
		end
	end
	result_array = result.split(' ')
	answer = result_array.map{|name| name.capitalize}.join(' ')
end


spy_names = {}
loop do 
	puts "Enter a spys name or type 'exit'"
	response = gets.chomp
	break if response == 'exit'
	spy_names[response] = name_converter(response)
end

spy_names.each do |user_name, secret_name|
	puts "#{secret_name} is really #{user_name}"
end


