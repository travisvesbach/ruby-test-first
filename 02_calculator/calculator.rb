#write your code here
def add (one, two)
	one + two
end

def subtract (one, two)
	one - two
end

def sum (array)
	total = 0
	array.each do |num|
		total = total + num
	end
	total
end

def multiply(array)
	total = 1
	array.each do |num|
		total = total * num
	end
	total
end

def power(base, power)
	total = 1
	power.times do
		total = total * base
	end
	total
end

def factorial (num)
	total = 1
	count = 1
	if num == 0
		return 1
	end
	while count <= num
		total = total * count
		count += 1
	end
	total
end
