ls
#Write a method that takes an array of integers and an integer to search for. 
#The method should return the index of the item, 
#or nil if the integer is not present in the array. 
#Don't use built-in array methods like .index. 
#You are allowed to use .length and .each.

array = [1, 4, 6, 9]
 
 def search_array(array, num)
 	index_counter = 0
 	
 	until index_counter == array.length 
			index_counter += 1
			if	array[index_counter] == num
			return index_counter
			end
		
		end	
	end		
p search_array(array, 9)

# Fibonacci Numbers

def fib(num)
# start with 0 and a 1
# then add sum of previous two numbers
# do method until reach number given to method 

fib_index = 2
array = [0, 1, 1]
	#take the previous two index(placements) values and add them together to 
	#equal the next index placements value
	until fib_index == num - 1
		
		prev_index = fib_index - 1
		
		fib_total = (array[fib_index].to_i + array[prev_index].to_i)
		
		array << fib_total

		fib_index += 1
	end
	return array
end
	
p fib(6)

#Release Part 2

# Choose a simple sorting algorithm to learn about aka Bubble sort or insertion sort.
# Form a conceptual understanding of how the algorithm works. 
	#What helps you grasp it? 
	#Do visualizations help? 
	#How can you find the right materials for yourself?
#Notice your emotional state as you tackle this algorithm: 
	#do you feel frustrated, underqualified, stupid, or overwhelmed? 
	#Or is it more like excitement and curiosity? 
	#How do you think these feelings affect your ability to learn?
#Pseudocode a sorting method that takes an array of integers and uses a sorting algorithm. 
#The method should return a sorted version of the array. 
#Your pseudocode should not be Ruby-specific.
#Implement the sorting method in Ruby. 

#Insertion Sort algorithm
	#Notes say it is efficient for small number elements
final = [2, 3, 1]
# sorted output should look [1, 2, 3]

def insertion_sort(array)
	final = [array[0]]
	array.delete_at(0)
	#main code
	for i in array
		final_index = 0
		while final_index < final.length
			if i <= final[final_index]
				final.insert(final_index, i)
				break
			elsif 
				final_index == final.length-1
				final.insert(final_index+1, i)
				break 
			end
			final_index +=1
		end
	end
	#output
	final
end

array = [1, 5, 3, 4, 6 ,3]

puts insertion_sort(array)


# Bubble Sort
# Iterates through every item in an array, by pair and then compares the pair, 
#if in the first part of the pair  is higher than the latter, it will switch them. 
#Once it switches that pair, the algorithm restarts and goes through the array again. 
#Example:
#[ 1, 4, 1, 3]
#first loop through [1, 1, 4, 3]
#second loop through [1, 1, 3, 4]

def bubble_sort(array)
		arr = array.length
	
	loop do	
		swap_num = false
		(arr - 1).times do |i|
			if array[i] > array[i + 1]
				array[i], array[i + 1] = array[i + 1], array[i] #swapping them out
				swap_num = true
			end
		end
		break if not swap_num
		
	end
	p array
end
		
num_array = [10, 9, 14, 3, 2]

p bubble_sort(num_array)

#Insertion Sort Algorithm

#a program is a specific implementation of an algorithm
#similar to a bubble sort because you compare a pair of numbers and swap them to put 
#the larger number after the smaller number.
#Different: Insertion sort does not require that they find the next largest or smallest element. 
#instead, the insertion sort takes the next element and inserts it into the sorted list
#at the beginning of the array. 
####Insertion sort takes advantage of presorting##### 
#This means it requires fewer comparisons than bubbles sort, unless the list is backwards

#example: [24, 13, 9, 64, 7]
#first loop [13, 24, 9, 64, 7]
#second loop [9, 13, 24, 64, 7]
#third loop [7, 9, 13, 24, 64]




















