def convert_to_roman(arabic_numbers, modern_num = false)
	if modern_num == false
		old_numerals(arabic_numbers)
	else
		modern_numerals(arabic_numbers)
	end
	
end


def modern_numerals(arabic_numbers)
	roman_convert = ""
	until arabic_numbers == 0
		if arabic_numbers >= 1000
			roman_convert << "M" * (arabic_numbers / 1000)
			arabic_numbers = arabic_numbers % 1000
		elsif arabic_numbers >= 900
			roman_convert << "CM" * (arabic_numbers / 900)
			arabic_numbers = arabic_numbers % 900	
		elsif arabic_numbers >= 500
			roman_convert << "D" * (arabic_numbers / 500)
			arabic_numbers = arabic_numbers % 500
		elsif arabic_numbers >= 400
			roman_convert << "CD" * (arabic_numbers / 400)
			arabic_numbers = arabic_numbers % 400
		elsif arabic_numbers >= 100
			roman_convert << "C" * (arabic_numbers / 100)
			arabic_numbers = arabic_numbers % 100
		elsif arabic_numbers >= 90
			roman_convert << "XC" * (arabic_numbers / 90)
			arabic_numbers = arabic_numbers % 90
		elsif arabic_numbers >= 50
			roman_convert << "L" * (arabic_numbers / 50)
			arabic_numbers = arabic_numbers % 50
		elsif arabic_numbers >= 40
			roman_convert << "XL" * (arabic_numbers / 40)
			arabic_numbers = arabic_numbers % 40
		elsif arabic_numbers >= 10
			roman_convert << "X" * (arabic_numbers / 10)
			arabic_numbers = arabic_numbers % 10
		elsif arabic_numbers == 9
			roman_convert << "IX"
			arabic_numbers = 0
		elsif arabic_numbers >= 5
			roman_convert << "V" * (arabic_numbers / 5)
			arabic_numbers = arabic_numbers % 5
		elsif arabic_numbers == 4
			roman_convert << "IV"
			arabic_numbers = 0			
		elsif arabic_numbers < 5
			roman_convert << "I" * arabic_numbers
			arabic_numbers = 0
		end
		arabic_numbers
	end
	roman_convert
end


def old_numerals(arabic_numbers)
	roman_convert = ""
	until arabic_numbers == 0
		if arabic_numbers >= 1000
			roman_convert << "M" * (arabic_numbers / 1000)
			arabic_numbers = arabic_numbers % 1000
		elsif arabic_numbers >= 500
			roman_convert << "D" * (arabic_numbers / 500)
			arabic_numbers = arabic_numbers % 500
		elsif arabic_numbers >= 100
			roman_convert << "C" * (arabic_numbers / 100)
			arabic_numbers = arabic_numbers % 100
		elsif arabic_numbers >= 50
			roman_convert << "L" * (arabic_numbers / 50)
			arabic_numbers = arabic_numbers % 50
		elsif arabic_numbers >= 10
			roman_convert << "X" * (arabic_numbers / 10)
			arabic_numbers = arabic_numbers % 10
		elsif arabic_numbers >= 5
			roman_convert << "V" * (arabic_numbers / 5)
			arabic_numbers = arabic_numbers % 5
		elsif arabic_numbers < 5
			roman_convert << "I" * arabic_numbers
			arabic_numbers = 0
		end
		arabic_numbers
	end
	roman_convert
end