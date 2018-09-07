class Goldman

	@@sno = 0
	@@employees = []
	def initialize(location)
		@location = location
		puts "initialized the Goldman at #{@location}"
	end

	def info
		"Goldman campus : #{@location}"
	end

	def registerEmployee(employee)
		@@sno +=1
		@@employees.push(employee)
		employee.id = @@sno
	end
end

class Employee
	attr_accessor :id
	attr_reader :name, :email
	@id = 0
	def initialize(name, email)
		@name = name
		@email = email
	end

	def info
		"Employee : #{@id}, #{@name}, #{@email}"
	end

	def equals id
		id == @id
	end
end

class Manager < Employee 
	attr_reader :team
	def initialize(name, email, team)
		super(name, email)
		@team = team
	end

	alias :einfo :info

	def info
		einfo + " manages team #{@team}"
	end

	def equals id, email
		(super id) && (email == @email)
	end

end

goldman = Goldman.new("Bangalore")
employee = Employee.new("Prashant", "bhai@test.com")
goldman.registerEmployee(employee)
puts "#{employee.info} is part of #{goldman.info}"
puts employee.equals 1

manager = Manager.new("Vedika", "manager@test.com", "final")
goldman.registerEmployee(manager)
puts "#{manager.info} is part of #{goldman.info}"
puts manager.equals 2, "manager@test.com"

goldman = Goldman.new("New York")
manager = Manager.new("Benjamin", "ben@test.com", "final")
goldman.registerEmployee(manager)
puts "#{manager.info} is part of #{goldman.info}"
puts manager.equals 3, "ben@test.com"