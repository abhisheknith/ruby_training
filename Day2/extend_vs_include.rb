module Printable
	def self.x
		"x\n"
	end

	def y
		"y\n"
	end
end

class Include
	include Printable
end

class Extend
	extend Printable
end

puts Printable.x
#puts Include.x
#puts Include.y
#puts Include.new.x
puts Include.new.y
#puts Extend.x
puts Extend.y
#puts Extend.new.x
#puts Extend.new.y
