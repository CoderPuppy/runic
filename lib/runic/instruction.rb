require "runic"

# Public: The superclass for all instructions
class Runic::Instruction
	# Public: Returns the arity of this type of instruction
	def arity
		self.class.arity
	end

	# Public: Returns the name of this type of instruction
	def name
		self.class.name
	end

	@arity = 0

	class << self
		# Public: Returns the name of this type of instruction
		attr_reader :name

		# Public: Returns the arity of this type of instruction
		attr_reader :arity
	end
end