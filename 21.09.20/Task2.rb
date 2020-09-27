class User
	def say_hello
		puts "user"
		
	end
end

class Student < User #Наследование
	def say_hello
		puts "student"
	end
end

student = Student.new
student.say_hello

puts $LOAD_PATH