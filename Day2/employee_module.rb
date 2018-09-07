require_relative 'goldman_module.rb'
module Employees
	include Goldman
	class Employee
		attr_accessor :id
		attr_reader :name, :email
		@id = 0
		def initialize(name, email)
			@name = name
			@email = email
			@confidentialForm = Goldman.getConfidentialityForm
			@NDAform = Goldman.getNDA
		end

		protected def info
			"Employee : #{@id}, #{@name}, #{@email} at #{Goldman.who}"
		end

		def isItProtected
			return false
		end

		public def deepInfo
			" #{info} \n confidentialForm: #{@confidentialForm}\n NDA: #{@NDAform}\n "
		end
	end

	class Manager < Employee 
		attr_reader :team
		def initialize(name, email, team)
			super(name, email)
			@team = team
		end

		def info
			super + " manages team #{@team}"
		end
	end
end

include Employees
goldman = GoldmanSachs.new("Bangalore")
employee = Employee.new("Prashant", "bhai@test.com")
goldman.registerEmployee(employee)
puts "#{employee.deepInfo} is part of #{goldman}",""
puts employee.isItProtected

manager = Manager.new("Vedika", "manager@test.com", "final")
goldman.registerEmployee(manager)
puts "#{manager.deepInfo} is part of #{goldman}",""

goldman = GoldmanSachs.new("New York")
manager = Manager.new("Benjamin", "ben@test.com", "final")
goldman.registerEmployee(manager)
puts "#{manager.deepInfo} is part of #{goldman}",""

