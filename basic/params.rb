@begining = 0
def sum(start, *rest)
	for item in rest
		@begining += item
	end
	@begining
end
p sum(100, 1, 2, 3, 4, 5)

def multiply(first , second = 1, third = 1)
	first * second * third
end

p multiply(10, third=20)
