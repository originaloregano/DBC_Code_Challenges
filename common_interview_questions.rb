
def fizzbuzz(n)
	number = n + 1
​
	number.times do |num|
		if (num % 3 == 0 && num % 5 == 0)
			puts "fizzbuzz"
		elsif (num % 3 == 0)
			puts "fizz"
		elsif (num % 5 == 0)
			puts "buzz"
		else
			puts num
		end
	end
end
​
puts fizzbuzz(100)
​
##########################################################
​
#Take an array with duplicate entries, return an array with unique entries.
​
nums = [1, 1, 5, 6, 3, 2, 3]
​
def unique(array)
	n = array.sort
	array.uniq!
end
​
p unique(nums)
​
lets = ["A", "A", "B", "C", "D", "D"]
​
def unique(array)
	new_array = Array.new
	array.each do |item|
		new_array << item unless new_array.include?(item)
	end
	new_array
end
​
p unique(lets)
​
###############################################
​
#How would you write a function to reverse a string? And can you do that without a temporary string?
​
def reverse_string(str)
  str.split(" ").reverse!.join(" ")
end
​
#reverses letters in sentence as well
​
def reverse_string(string) # Method reverse_string with parameter 'string'.
  loop = string.length # int loop is equal to the string's length.
  word = '' # This is what we will use to output the reversed word.
      while loop > 0 # while loop is greater than 0, subtract loop by 1 and add the string's index of loop to 'word'.
      loop -= 1 # Subtract 1 from loop.
      word += string[loop] # Add the index with the int loop to word.
    end # End while loop.
  return word # Return the reversed word.
end # End the method.
​
p reverse_string("I love all hats")
##################################################
#How would you change the format of all the phone numbers in 10,000 static html web pages?
#Not by hand if I could avoid it. I'd write a regex that matches any of the known formats in the set of pages and use a language with a function that replaces based on a regular expression find. 
​
​
#################################################
#example of recursion
# Takes as its input an integer +n+ representing the starting number of bottles.
# Returns the lyrics to "n Bottles of Beer".
​
def bottle_song_lyrics(n)
	until n == 0 
		puts "#{n} bottles of beer on the wall. #{n} bottles of beer." 
		puts "Take one down, pass it around. #{n-1} bottles of beer on the wall."
		n -= 1
	end
end
​
def bottle_song_recursive(n)
	return if n == 0
	puts "#{n} bottles of beer on the wall. #{n} bottles of beer."
	puts "Take one down, pass it around. #{n-1} bottles of beer on the wall."
	bottle_song_recursive(n-1)
end
​
bottle_song_lyrics(99)
bottle_song_recursive(99)
###############################
#Walk me through how you’d make up a url shortener app, including how the database would be set up?
​
#database set up
before_validation(on: :create) do
 self.short_url = "http://localhost:9393/" + SecureRandom.urlsafe_base64[0..7]
 #setting a short_url
end
​
#############################
#How would you write an algorithm that takes two strings of equal length and determines whether one is an anagram of the other? 
​
def convert_anagram(word)
	word.downcase.chars.sort
	#make all words the same, make into array, sort letters (for comparison later)
end
​
def anagram?(word_1, word_2)
	convert_anagram(word_1) == convert_anagram(word_2)
	 #== is a true/false statement so it would return true if the same, false if not
end
​
##############################
#PRIME Factors
# @primes = [2,3]
​
def prime?(number)
	return false if number == 1 #not prime
	@primes.each do |prime|
		if number % prime == 0 && number != prime
			return false
		end
	end
	true
end
​
def prime_factors(number)
	factors = []
	n = 2
​
	while n <= number
		until number % n !==0
		factors << n
		number = number/n
		end
		n +=1 
	end
	factors
end
​
#####################################
#binary search
​
# Pick a point in the middle
# Compare what we find in the middle to what we're searching for
# If we found what we're looking for, we're done!
# If we didn't find what we're looking for, pick the left or right half to keep searching
# Apply the same process to our new half
#halway of the array length always rounds DOWN
​
array = [1,2,3,4,5,6,7]
def binary_search(number, array)
  midway = array.length / 2
  starting_point = 0
  if number == array[midway]
    return array[midway]
  elsif
   number < array[midway]
    binary_search(number, array[starting_point..midway])
    p midway -1
  elsif
    number > array[midway]
    binary_search(number, array[midway + 1..array.length])
    p midway +1
  end
end
​
p binary_search(4, array)
​
#######################################
​
def linear_search(num, array)
 counter = 0
 until counter == array.length
  counter += 1
  if num == array[counter]
   return counter
  else
   nil
  end
 end
end
​
def linear_search(num, array)
	array.each do |item|
		if array.include?(item)
end
​
​
p linear_search(:A, [:Q, :O, :A, :A, :C, :G, :S])
​
def global_linear_search(symbol, array)
 counter = 0
 counted = []
 until counter == array.length
   if symbol == array[counter]
    counted << counter
   end
   counter += 1
 end
 return nil if counted == []
 counted
end
​
global_linear_search(:A, [:Q, :O, :A, :A, :C, :G, :S])
​
########################################
#factorial challenge

def factorial_iterative(n)
  new_num = 1
  until n == 0
   new_num *= n
   n -= 1
  end
  new_num
end
​
def factorial_recursive(n)
  if n == 0
   n = 1
  else
   n * factorial_recursive(n-1)
  end
end
​
####################################
​
#make own shuffle method
​
def shuffle(array)
 	shuffle_array = Array.new
 	max = array.length
 	array.each do |i|
 		shuffle_array.insert(rand(max - 1), i)
 	end
 	shuffle_array.compact
end
​
######################################
#Pig Latin
​
def pig_latin_converter(word)
 	if word.match(/\A[aeiouAEIOU]/)
 		p word
 	else
 	 first_consonants = word.match(/^[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]+/).to_s
 	 result_word = word.gsub!(first_consonants, "")
 	 p result_word + first_consonants + "ay"
 	end 
end
​
​
def convert_sentence(sentence)
 	array = sentence.split(' ')
 	p array
 	p translated_sentence = array.map {|word| pig_latin_converter(word)}
 	p translated_sentence.join(' ')
end
​
convert_sentence('I love all cats')
​
########################################
#Fibonacci Sequence
​
def iterative_nth_fibonacci_number(n)
 x,y = 0,1
 n.times do
  x,y = y, x+y
 end
 x
end
​
def recursive_nth_fibonacci_number(n)
 return n if n == 0 || n == 1
 recursive_nth_fibonacci_number(n-1) + recursive_nth_fibonacci_number(n-2)
end
​
​
def iterative_nth_fibonacci_number(n)
	array = [0, 1]
	count = 0
	until count == n
		array	<< array[-1] + array[-2]
		count += 1
	end
	array[n]
end
​
​
def recursive_nth_fibonacci_number(n)
	return n if n < 2
	recursive_nth_fibonacci_number(n - 1) + recursive_nth_fibonacci_number(n - 2)
end

​
#######################################
​
 def word_translator(char)
   halfway = alphabet.length / 2
   is_capitalized = (char.upcase == char)
  
   if alphabet.index(char.downcase) == nil
    or !alphabet.index(char.downcase)
    "boing"
   elsif
   is_capitalized && alphabet.index(char.downcase) < halfway
   "bloop"
   elsif
   is_capitalized || char == "e"
   "buzz"
   else
   "beep"
   end
 end
​
 translate_integer(100)
 
​
​
 def translate_phrase(phrase)
  char_index = 0 loop counter
  translate_response = ""
  while char_index < phrase.length
   translate_response << translate_char(phrase[char_index])
   char_index += 1
  end
  translate_response
 end
 puts translate_phrase("Happy Halloween!")
​
​
#Otherwise, if a letter is capitalized or it's the letter "e", it becomes "buzz".
#if it's not a letter at all, it becomes "boing"
​
#otherwise, it becomes "beep".
def robot_translator(phrase)
  counter = 0
  i = 0
  first_alpha = "abcdefghijklm"
  while counter < phrase.length
    word_index = phrase[i]
    if word_index.upcase && word_index[first_alpha]
      puts "bloop"
    elsif
      word_index.upcase || word_index == "e"
      puts "buzz"
    elsif word_index.to_i
      puts "boing"
    else
      puts "beep"
    end
  counter += 1
  end
end
​
p robot_translator("cat")
​
