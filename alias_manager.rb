#PSEUDOCODE
# Define a method that takes a name
# Make a vowel and consonant dictionary within the method to refer to
# Make the parameter name into an array
# Iterate through the name array to do something to each letter
# Check each letter in name array if it is a vowel
	#if a vowel, make that vowel in name compared to index in vowel dictionary
	# replace vowel in name to NEXT vowel in dictionary
# Check each letter in the name array if it is a consonant
	#if a consonant, make the consonant in the name compared to the index in the consonant dictionary
	#replace consonant in the name with NEXT consonant in the dictionary
# Make edge case for consonant dictionary: "z" to go to "b", or beginning of string
# Make edge case for vowel dictionary: "u" to go to "a", or beginning of string





def alias_name(name)
	vowels = "aeiou"
	consonants = "bcdfghjklmnpqrstvwxyz"

	name.chars.map do |letter|
		if vowels.include?(letter)
			vowels[vowels.index(name[letter]) + 1]
		elsif consonants.include?(letter)
			consonants[consonants.index(name[letter]) + 1]
		elsif letter == "z"
			letter = "b"
		else letter == "u"
			letter = "a"
		end
	end
end
				

 ##User Interface##

puts "To encrypt your real name and make it into a spy name, please type the first and last name."
puts "Type 'quit' to exit. Hit enter to continue: "
input = gets.chomp
	loop do
	break if input == 'quit'
	 		puts "What is your first name?"
			first = gets.chomp.downcase
			first_name = alias_name(first)
			first_name = first_name.join('').capitalize


			puts "What is your last name?"			
			last = gets.chomp.downcase
			last_name = alias_name(last)
			last_name = last_name.join('').capitalize

			puts "The name #{first.capitalize} #{last.capitalize} turned into the spy name of #{last_name} #{first_name}."
			puts "Hit enter to continue or type 'quit' to exit."
			input = gets.chomp
	end


		
			
	 	



	


		
		
		



			







 	



