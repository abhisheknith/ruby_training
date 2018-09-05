puts "Enter the numbers"
arr = []
loop
	input = gets.chomp.to_i
	break unless input > 0
	arr[arr.size] = input
end
max = 0
for num in arr 
	max = num if max < num
end
p "MAX : #{max}"

names=["Prashant", "Prashanth", "Abhishek"]
for name in names
	letterCount = Hash.new(0)
	for char in name.chars
		letterCount[char]+=1
	end
	puts letterCount
end
puts "Finished"
