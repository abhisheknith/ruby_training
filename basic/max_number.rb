a, b, c = (puts "Enter the numbers"; gets.chomp.to_i), gets.chomp.to_i, gets.chomp.to_i
if a < b then 
	if b < c then 
		p "#{c} is max."
	elsif b > c then
		p "#{b} is max."
	else
		p "#{b} is max but repeated."
	end
elsif a > b
	if a < c then 
		p "#{c} is max."
	elsif a > c then
		p "#{a} is max."
	else
		p "#{a} is max but repeated."
	end
else 
	if a < c then 
		p "#{c} is max."
	elsif a > c then
		p "#{a} is max is repeated."
	else
		p "#{a} is max but repeated."
	end	
end