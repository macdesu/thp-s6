#!/usr/bin/ruby

# ex01
def odd_even(nb)
	odd_numbers = [1, 3, 5, 7, 9]
	if odd_numbers.include?(nb % 10)
		return "impair"
	end
	return "pair"
end

#ex02
def positives_sum(int_array)
	sum = 0
	nb_array.each do | nb |
		unless nb < 1
			sum += nb
		end
	end
	return sum
end

#ex03
def opposite_number(nb)
	return -nb
end

#ex04
def reapeatStr(i, str)
	while i > 0
		print str
		i -= 1
	end
end

#ex05
def del_first_n_last_letter(str)
	return str.slice(1..str.length - 2)
end

#ex06 (to fix)
def smallest_int(int_array)
	smallest = int_array[0]
	int_array.each do | number |
		if number < smallest
			smallest = number
		end
	end
	return smallest
end

# ex07
def count_sheeps(sheeps)
	number = 0
	sheeps.each do | sheep |
		if sheep == true
			number += 1
		end
	end
	return number
end

# ex08
def sum_excluding_smallest_n_biggest(int_array)
	sum = 0
	smallest = int_array[0]
	biggest = int_array[0]
	int_array.each do | number |
		if number < smallest
			smallest = number
		end
		if number > biggest
			biggest = number
		end
		sum += number
	end
	return sum - biggest - smallest
end

# ex09
def remove_spaces(str)
	str.delete(" ")
end

# ex10
def sum_by_sign(int_array)
	result_array = Array.new(2, 0)
	int_array.each do | number |
		if number > 0
			result_array[0] += number
		else
			result_array[1] += number
		end
	end
	return result_array
end

# ex11
def summation(nb)
	current_n = 2
	str = "1"
	until current_n > nb
		str = str + " + " + current_n.to_s
		current_n += 1
	end
	return str
end

# ex12
def inverse(int_array)
	int_array.map do | number |
		number = -number
	end
end

# ex13 (ugly)
def rps(player1, player2)
	if player1 == "rock"
		if player2 == "paper"
			return "Joueur 2 gagne !"
		elsif player2 == "scissors"
			return "Joueur 1 gagne !"
		else
			return "Egalité !"
		end
	elsif player1 == "paper"
		if player2 == "rock"
			return "Joueur 1 gagne !"
		elsif player2 == "scissors"
			return "Joueur 2 gagne !"
		else
			return "Egalité !"
		end
	elsif player1 == "scissors"
		if player2 == "paper"
			return "Joueur 1 gagne !"
		elsif player2 == "rock"
			return "Joueur 2 gagne !"
		else
			return "Egalité !"
		end
	end
end

# ex14
def itoa(nb)
	return nb.to_s
end

#ex15

def double_each_character(str)
	new_str = Array.new
	str.scan(/./).each do | letter |
		new_str.push(letter)
		new_str.push(letter)
	end
	return new_str.join
end

# others

def rps(player1, player2)
	if player1 == "rock"
		if player2 == "paper"
			return "Joueur 2 gagne !"
		elsif player2 == "scissors"
			return "Joueur 1 gagne !"
		else
			return "Egalité !"
		end
	elsif player1 == "paper"
		if player2 == "rock"
			return "Joueur 1 gagne !"
		elsif player2 == "scissors"
			return "Joueur 2 gagne !"
		else
			return "Egalité !"
		end
	elsif player1 == "scissors"
		if player2 == "paper"
			return "Joueur 1 gagne !"
		elsif player2 == "rock"
			return "Joueur 2 gagne !"
		else
			return "Egalité !"
		end
	end
end