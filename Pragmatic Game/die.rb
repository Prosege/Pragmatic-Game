require_relative 'auditable'

class Die
	include Auditable

	attr_reader :num

	def initialize()
		roll()
	end

	def roll()
		@num = rand(1..6)
		return @num
	end

end