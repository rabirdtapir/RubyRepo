class Node

	attr_accessor :next
  	attr_reader   :value

	def initialize(value)
		@value = value
	end

	def to_s
		return value
	end
	
	def put(currentValue)

		if @next == nil then
			@next = Node.new(value)
		end
		
	end

end