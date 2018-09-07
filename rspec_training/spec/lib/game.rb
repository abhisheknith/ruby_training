class Game
	attr_reader :score
	
	def initialize
		@score = 0
	end
	
	def roll value
		@score += value
	end
end