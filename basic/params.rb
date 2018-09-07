@begining = 0
def sum(start, *rest)
	for item in rest
		@begining += item
	end
	@begining
end
p sum(100, 1, 2, 3, 4, 5)

def multiply(first , second = 1, third = 1)
	p first, second, third
	first * second * third
end

p multiply(first=10, third=20)
