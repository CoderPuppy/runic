require File.expand_path('../metadata', __FILE__)

Gem::Specification.new do |s|
	s.name = Runic::NAME
	s.version = Runic::VERSION.to_s
	s.summary = Runic::SUMMARY
	s.description = Runic::DESCRIPTION
	s.authors = Runic::AUTHORS

	Runic::DEPENDENCIES.each do |name, version|
		s.add_dependency name, version
	end
end