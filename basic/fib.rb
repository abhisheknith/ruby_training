def fib (fib1 = 0, fib2 = 1, num = 10)
	for i in 1..num
		puts fib1
		fib1, fib2 = fib2, fib1 + fib2
	end
	puts fib1
	puts fib2
end

fib1, fib2, num = gets.chomp.to_i, gets.chomp.to_i, gets.chomp.to_i
fib(fib1, fib2, num)