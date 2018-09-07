def doSomething(first, second = first)
	yield first, first + second
	# It won't execute if block has return statement
	yield second, first + second
end

def meth
	doSomething(10) do |first, second|
		@sum = 0
		first.upto(second) { |num| 
			@sum += num 
			@sum
		}
		puts "Returning from block"
		return "Sum #{@sum}\n\n"
	end
end

puts meth
BEGIN {
	puts "Define here...."
}

END {
	puts "Destroy here...."
}
