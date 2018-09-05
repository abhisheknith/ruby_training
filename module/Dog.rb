$LOAD_PATH.push(".")
require 'Animal'
class Dog
	include Animal
	def bark
		puts "I am barking..."
	end
end