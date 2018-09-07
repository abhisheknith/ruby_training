require_relative './living.rb'
module Animal
	include Living
	def walk
		puts "I am walking..."
	end

	def run
		puts "I am running..."
	end
end
