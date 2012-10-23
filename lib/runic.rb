require File.expand_path('../../metadata', __FILE__)

# Public: The main namespace
module Runic
	autoload :Utils, "runic/utils"
	autoload :Code, "runic/code"
	autoload :Generator, "runic/generator"
	autoload :Instructions, "runic/instructions"
	autoload :Instruction, "runic/instruction"
end