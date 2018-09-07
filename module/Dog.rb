require_relative 'Animal.rb'
class Dog
	include Animal
	def bark
		puts "I am barking..."
	end
end