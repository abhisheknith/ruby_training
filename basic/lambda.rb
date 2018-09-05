def doSomething(first, second = first, lamb)
	puts lamb.call(first, first + second)
end

def meth
	add = lambda{|first, second|
		@sum = 0
		first.upto(second) { |num| 
			@sum += num 
			@sum
		}
		puts "Returning from Addition"
		return "Sum #{@sum}\n\n"
	}
	multiply = lambda{|first, second|
		@mult = 1
		first.upto(second) { |num| 
			@mult *= num 
			@mult
		}
		puts "Returning from multiply"
		return "Multiplication #{@mult}\n\n"
	}
	doSomething(1, 5, add)
	doSomething(1, 5, multiply)
end

meth
BEGIN {
	puts "Define here...."
}

END {
	puts "Destroy here...."
}
