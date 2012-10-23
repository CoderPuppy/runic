require 'runic'

# Internal: Utilities
module Runic::Utils
	# Internal: Camelize a lower_case_and_underscored_word
	# 
	# Taken from ActiveSupport
	# 
	# lower_case_and_underscored_word - The string to camelize
	# first_letter_in_uppercase - Whether the first letter is uppercase
	# 
	# Examples
	# 	
	# 	Runic::Utils.camelize 'runic_is_awesome' #=> 'RunicIsAwesome'
	# 
	# Returns the camelized version of lower_case_and_underscored_word
	def camelize(lower_case_and_underscored_word, first_letter_in_uppercase = true)
		if first_letter_in_uppercase
			lower_case_and_underscored_word.to_s.gsub(/\/(.?)/) { "::#{$1.upcase}" }.gsub(/(?:^|_)(.)/) { $1.upcase }
		else
			lower_case_and_underscored_word.to_s[0].chr.downcase + camelize(lower_case_and_underscored_word)[1..-1]
		end
	end
end