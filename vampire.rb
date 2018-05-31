#Vampire Detection Test

	puts "How many employees will you be processing today?"
		total_employees = gets.to_i

employees = 0
while employees != total_employees
	employees += 1
	
	puts "What is your name?"
		user_input = gets.chomp
			if user_input == "Drake Cula"
				name_except2 = true
			elsif user_input == "Tu Fang"
				name_except2 = true
			else
				name_except2 == false
			end

	puts "How old are you?"
		age = gets.to_i

	puts "What year were you born?"
		year_born = gets.to_i
			if 2016 - year_born != age
				age = false
			else
				age = true
			end

	puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
		user_input = gets.chomp
			if user_input == "yes"
				garlic_bread = true
			else
				garlic_bread = false
			end

	puts "Would you like to enroll in the company's health insurance? (yes/no)"
		user_input = gets.chomp
			if user_input == "yes"
				health_insurance = true
			else
				health_insurance = false
			end
		
	puts "Please name any/all of your allergies."
		user_input = gets.chomp	

			if user_input == "sunshine"
				allergy = true
			elsif
				allergy == false
			else	
				stop_list = "done"
				until user_input == stop_list
					puts "Do you have any other allergies? If not, please type 'done'."
					user_input = gets.chomp
				end
			end
	puts "You are..."
			if 
				allergy
				puts "Probably a vampire." 
			elsif
				name_except2
				#employee name is Drake Cula or Tu Fang (true)
				puts "Definitely a vampire."
			elsif 
				age && (garlic_bread || health_insurance)
				#If the employee got their age right (true), wants garlic bread (true) 
				#OR health insurance (true)
				puts "Probably not a vampire."
			elsif
				!age && (garlic_bread || health_insurance)
				#if employee age is wrong (false), hate garlic bread (false) 
				#OR hates health insurance
				puts "Probably a vampire."
			elsif 
				!(age && garlic_bread && health_insurance)
				#if employee age is wrong (false), hates garlic bread (false) 
				#AND hates health insurance (false)
				puts "Almost certainly a vampire."
			else
				puts "Results inconclusive."
			end
	
end
puts "Actually, nevermind! What do these questions have to do with anything? Let's all be friends."
	
			
	

	

	






