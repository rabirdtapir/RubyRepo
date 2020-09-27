
class LinkedList

	require './Node.rb'
	include Enumerable

	def initialize(value)
		@head = Node.new(value)
	end

	def each(&block)
		return to_enum(:each) unless block_given?
		node = @head
		while node != nil
			yield(node)
			node = node.next
		end
	end

	def insert(value)
		@head.put(value)
	end
end

list = LinkedList.new("Yolo")
list.insert("owo")
list.each{|item| puts(item)}
puts (list.select{|item| item.value.size > 3})
puts
puts (list.map {|item| item.value})
puts
puts (list.sort_by{|item| item.value.size})