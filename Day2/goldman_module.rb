module Goldman

	module ClassMethods
		def getConfidentialityForm
			return "getConfidentialityForm returned this."
		end

		def getNDA
			return "NDA returned."
		end
	end

	extend ClassMethods
	
	def who
		"This is Goldman Sachs" 
	end

	class GoldmanSachs 
		include Goldman	
		@@sno = 0
		@@employees = []
		def initialize(location)
			@location = location
			puts "#{info}"
		end

		def info
			"#{Goldman.who} Goldman campus : #{@location}"
		end

		def to_s
			"Goldman campus : #{@location}"
		end

		def registerEmployee(employee)
			@@sno +=1
			@@employees.push(employee)
			employee.id = @@sno
		end

	end
end
