#!/usr/bin/ruby

def who_is_bigger(a, b, c)
	biggest = a
	numbers = { :a => a, :b => b, :c => c }
	numbers.values.each do | n |
		if n == nil
			return "nil detected"
		elsif n > biggest
			biggest = n
		end
	end
	return "#{numbers.key(biggest)} is bigger"
end

def reverse_upcase_noLTA(str)
	return str.reverse.upcase.delete("LTA")
end

def array_42(arr)
	return arr.include? 42
end

def magic_array(arr)
	arr.flatten!
	arr.map! { |n| n *= 2 }
	arr.delete_if {|n| n % 3 == 0}
	return arr.uniq.sort
end