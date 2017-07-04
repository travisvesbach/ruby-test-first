#write your code here
def translate(input)
	vowel = ['a','e','i','o','u','A','E','I','O','U']
	words = input.split(' ')
	output = []
	enders = ['?','!','.',',']
	words.each do |word|
		cap = false
		punctuation = false
		if word == word.capitalize
			cap = true
		end
		if enders.include?(word[-1])
			mark = word[-1] 
			word = word[0..-2]
			punctuation = true
		end
		if vowel.include?(word[0])
				word << 'ay' 
		else
			until vowel.include?(word[0])
				if word[0] == 'q' and word[1] == 'u'
					word << word[0..1]
					word = word[2..-1]
				else
					word << word[0]
					word = word[1..-1]
				end
			end
			word << 'ay'
		end
		if cap
			word.capitalize!
		end
		if punctuation
			word << mark
		end
		output.push(word)
	end
	output.join(' ')
end
