#!/usr/bin/ruby

def echo(s)
	return s
end

def shout(s)
	return s.upcase
end

def repeat(s, times=2)
	return [s] * times * ' '
end

def start_of_word(s, l)
	return s[0..(l - 1)]
end

def first_word(s)
	return s.split[0]
end

def titleize(s)
	s = s.split(/\s/)
	s.map! do | word |
		if word.length > 3 || word == s[0]
			word = word.capitalize
		else
			word = word.downcase
		end
	end
	return s.join(' ')
end

print titleize("the bridge over the river kwai kek l")