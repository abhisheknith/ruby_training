require_relative '../module/Dog.rb'
class Dog
	attr_reader :name
	def initialize(name)
		@name=name
	end

	def bark
		puts "Awesome....."
	end
end

class Tester
	def initialize(name)
		@dog = Dog.new(name)
		puts "initialized the Goldman"
	end

	def info
		puts @dog.name
		@dog.bark
		@dog.die
	end
end

tester = Tester.new('Tommy').info