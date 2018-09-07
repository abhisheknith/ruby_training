def closeFile file
	puts "Closing file : #{file}"
	file.close
end

fileName = "../resource/abc.txt"
begin
	print "Write mode :"
	file = File.new(fileName, "w+")
	file.puts("Hello World!")
	puts "Written."
rescue Exception => e
	puts "Error: something went wrong #{e}"
ensure
	file.close() unless file.closed?
end

begin
	print "Append mode :"
	fileAp = File.new(fileName, "a+")
	fileAp.puts("I am happy.")
	puts "Appended. Reading :"
	fileAp.seek(0)
	fileAp.each { |line| p line.chomp }
rescue Exception => e
	puts "Error: something went wrong #{e}"
ensure
	fileAp.close() unless fileAp.closed?
end

begin
	puts "Read mode :"
	fileRead = File.new(fileName)
	fileRead.each { |line| p line.chomp }
	puts "Read"
rescue Exception => e
	puts "Error: something went wrong #{e}"
ensure
	closeFile(fileRead) unless fileRead.closed?
end
