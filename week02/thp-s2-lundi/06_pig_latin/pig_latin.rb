#!/usr/bin/ruby

def translate(s)
	s = s.split 
	s.map! do | word |
		i = word.length
		until word[0] == 'a' || word[0] == 'e' || word[0] == 'i' || word[0] == 'u' || word[0] == 'y' || i == 0
			# puts word
			i -= 1
			word = word + word[0]
			word[0] = ''
		end
		word = "#{word}ay"
	end
	return s.join(' ')
end

puts translate("apple")
puts translate("banana")
puts translate("cherry")
puts translate("school")
puts translate("sssssssghtdddqeiuo")