require 'runic'

# Public: A set of instructions
# 
# Examples:
# 	
# 	Code.new(:push_nil)
class Runic::Code < Array
	# Public: Initialize an instance of Code
	# 
	# ins - An array of initial instructions
	def initialize(*ins)
		super()

		concat ins
	end

	# Public: Gets the instruction at an address
	# 
	# address - The address at which to get an instruction.
	#           Negatives go from the end of the code
	# 
	# Returns an array of the instruction and the arguments for that instruction
	# Raises AddressError if the address is out of range
	def [](address)
		address = size + address if address < 0

		range_end = size - 1
		range = (-range_end - 1)...range_end
		raise AddressError, "address #{address} outside of code bounds: #{-range_end - 1}...#{range_end}" unless range.include? address

		id = super
		ins = id_to_ins(id)

		arity = if ins.respond_to? :arity
			ins.arity
		else
			ins.method(:call).arity
		end - 1

		args = [*super(address + 1, arity)]

		[ ins, args ]
	end
	alias :get :[]

	# Public: Loop through all the instructions in the code
	# 
	# Yields each instruction
	# 
	# Returns self
	def each
		address = 0

		loop do
			break if address >= size

			ins, args = self[address]
			address += args.size + 1
			yield ins, args
		end

		self
	end

	private

		def id_to_ins(id)
			Instructions[id]
		end

	# Public: Some error with an address
	class AddressError < StandardError; end
end