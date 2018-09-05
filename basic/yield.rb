def doSomething(first, second = first)
	yield first, first + second
	yield second, first + second
end

def meth
	doSomething(10) { |first, second|
		@sum = 0
		first.upto(second) { |num| 
			@sum += num 
			@sum
		}
		puts "Returning from block"
		return "Sum #{@sum}\n\n"
	}
end

puts meth
BEGIN {
	puts "Define here...."
}

END {
	puts "Destroy here...."
}
