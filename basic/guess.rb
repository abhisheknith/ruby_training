guess_list = ['right', 'wrong', 'other']
while !guess_list.include?(c = STDIN.gets.strip!) 
	puts "Guess again."
end
p "#{c} was correct one"