

class Sequence

	def read(number)
		if number.length == 0
			return number

		else 
			result = ""
			i = 0
			while i < number.length
				t = counter(number, i)
				result += t.to_s + number[i]
			end
		end

			return result
	end

	def counter(number, point)
		counter = 1
		for i in (point + 1)..number.length
			if (number[point] == number[i])
				counter = counter + 1
			else

				break
			end
		
		end

		return counter
	end

end

seq = Sequence.new()

puts "enter a number"
number = gets
parseCheck = number.to_i
puts
puts "enter your limit"
limit = gets

for i in 0..limit.to_i
	number = seq.read(number).to_i
end
puts number