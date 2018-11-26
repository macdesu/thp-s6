def add(n1, n2)
	return n1 + n2
end

def subtract(n1, n2)
	return n1 - n2
end

def sum(numbers)
	return numbers.sum
end

def multiply(n1, n2)
	return n1 * n2
end

def power(n1, n2)
	return n1 ** n2
end

def factorial(n)
	fact = n
	if n < 0
		return (0)
	elsif n == 0
		return 1
	end
	while n > 1
		fact *= n - 1
		n -= 1
	end
	return fact
end