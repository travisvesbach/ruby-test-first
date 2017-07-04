#write your code here
def echo(input)
	input
end


def shout(input)
	input.upcase
end

def repeat (input, time=2)
	output = input
	time = time - 1
	time.times do 
		output += " #{input}"
	end
	output
end

def start_of_word(word, num)
	word[0...num]
end

def first_word(input)
	words = input.split(' ')
	words[0]
end

def titleize (input)
	words = input.split(' ')
	if words.length == 1
		return words.join.capitalize!
	end

	words.each do |word| 
		if word != 'and' and word != 'the' and word != 'over'
			word.capitalize!
		end
	end

	words[0].capitalize!
	words.join(' ')
end
