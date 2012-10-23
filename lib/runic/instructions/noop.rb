require "runic"

# Public: The :noop instruction that does nothing
class Runic::Instructions::Noop < Runic::Instruction
	@name = :noop
end