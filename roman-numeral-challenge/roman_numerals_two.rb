OLD_NUMERALS = {
	1000 => "M",
	500 => "D",
	100 => "C",	
	50 => "L",
	10 => "X",
	5 => "V",
	1 => "I"	
}

MODERN_NUMERALS = {
	1000 => "M",
	900 => "CM",
	500 => "D",
	400 => "CD",
	100 => "C",	
	90 => "XC",
	50 => "L",
	40 => "XL",
	10 => "X",
	9 => "IX",
	5 => "V",
	4 => "IV",
	1 => "I"	
	}


def convert_to_roman(arabic_numbers, modern_num = false)
	if modern_num == false
		old_numerals(arabic_numbers)
	else
		modern_numerals(arabic_numbers)
	end
end

def old_numerals(arabic_number)
	roman_convert = ""
	OLD_NUMERALS.each do |arabic, roman|
		roman_convert << roman *(arabic_number / arabic)
		arabic_number = arabic_number % arabic
	end
	roman_convert
end

def modern_numerals(arabic_number)
	roman_convert = ""
	MODERN_NUMERALS.each do |arabic, roman|
		roman_convert << roman *(arabic_number / arabic)
		arabic_number = arabic_number % arabic
	end
	roman_convert
end