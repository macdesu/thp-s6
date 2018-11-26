#!/usr/bin/ruby

def letter_is_downcase(letter, n)
	if (letter + n) > 122 # checks if the converted letter will exceed 'Z'
		until letter > 122
			letter += 1
			n -= 1
		end
		letter = 97
		letter += n
	else
		letter += n
	end
	return letter
end

def letter_is_upcase(letter, n)
	if (letter + n) > 90 # checks if the converted letter will exceed 'z'
		until letter > 90
			letter += 1
			n -= 1
		end
		letter = 65
		letter += n
	else
		letter += n
	end
	return letter
end

def chiffre_de_cesar(str, n)
	str = str.chars # string to array of characters
	str.map! do | letter |
		letter = letter.ord # letter to ascii code
		if letter >= 65 && letter <= 90
			letter = letter_is_upcase(letter, n)
		elsif letter >= 97 && letter <= 122
			letter = letter_is_downcase(letter, n)
		end
		letter = letter.chr # ascii code to letter
	end
	return str.join
end

print chiffre_de_cesar("What a string!", 5) # returns: "Bmfy f xywnsl!"