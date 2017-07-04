class Book
# write your code here

	attr_accessor :title
	

	def title=(name)
		no_cap = ['on','at','in','the','as','for','from','of','a','an','and','but']
		@name_array = name.split(' ')
		@name_array.each do |word|
			unless no_cap.include?(word)
				word.capitalize!
			end
		end
		@name_array[0].capitalize!
		@title = @name_array.join(' ')
	end


end


