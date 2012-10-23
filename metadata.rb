module Runic
	# Public: Name of this gem
	NAME = "runic"

	# Public: Description of this gem
	DESCRIPTION = "The Runes of Ruby"

	# Public: Summary of this gem
	SUMMARY = "A Ruby Instruction Set"

	# Public: Authors of this gem
	AUTHORS = ["Drew"]

	# Public: Runtime dependencies of this gem
	DEPENDENCIES = {

	}

	# Public: Version of this gem
	module VERSION
		# Public: Major Version
		MAJOR = 0

		# Public: Minor Version
		MINOR = 0

		# Public: Patch Number
		PATCH = 1

		# Public: Tag
		TAG = "dev"

		# Public: Build Number
		BUILD = 0

		# Public: Returns the version as an array
		def self.to_a
			[ MAJOR, MINOR, PATCH, TAG, BUILD ].compact
		end

		# Public: Returns the version as a string
		def self.to_s
			to_a.join '.'
		end
	end
end