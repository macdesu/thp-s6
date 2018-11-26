#!/usr/bin/ruby

def multiples()
	num = Array.new
	mul = 1
	while mul < 1000
		if (mul % 3) == 0 || (mul % 5) == 0
			num.push(mul)
		end
		mul += 1
	end
	
	return num
end