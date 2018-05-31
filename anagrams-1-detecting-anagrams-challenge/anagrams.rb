def anagrams?(word, word2)
	word.downcase.chars.sort == word2.downcase.chars.sort
end

# p anagrams?("melon", "lemon")
# p anagrams?("melon", "bike")
#edge cases
# p anagrams?("melon", "melon")
# p anagrams?('MELON', 'lemon')
# p anagrams?('kilso', 'osilk')
# p anagrams?('abcde2', 'c2abed')

def anagram_canonical_form(word)
	word.downcase.chars.sort
end

def compare_canonical(word, other_word)
	anagram_canonical_form(word) == anagram_canonical_form(other_word)
end
