require 'bundler/setup'

Bundler.setup

namespace :gem do
	desc "Build the gem"
	task :build do
		sh "gem build runic.gemspec"
	end
end

pry = proc do |*args|
	sh "bundle exec pry -r bundler/setup -e 'Bundler.setup; nil' -r runic #{args.join ' '}"
end

namespace :dev do
	desc "Install the dev environment"
	task :install do
		sh "bundle install"
	end

	desc "Open a console with Runel loaded"
	task :console do
		pry.call
	end
end

# Gives me test
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new :test

# Gives me rdoc, rerdoc and clobber_rdoc
require 'rdoc/task'
RDoc::Task.new do |rdoc|
	rdoc.main = "README.rdoc"
	rdoc.rdoc_dir = "doc"

	rdoc.markup = 'tomdoc'
end

desc "Test it, Build the docs and the gem, All in one."
task :default => [ :test, :rdoc ]