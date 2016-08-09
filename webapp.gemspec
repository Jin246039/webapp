$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'webapp/version'

Gem::Specification.new 'webapp', Webapp::VERSION do |s|
	s.description = "Webapp is a web app exercise
					which use foundation as front-end framework
					and use sinatra as back-end framework"
	s.summary = "web app exercise"
	s.authors = ["Berry Jin(Jin Bei)"]
	s.email = "15605189715@163.com"
	s.license = 'MIT'
	s.files = %w(AUTHORS.md LICENSE Rakefile webapp.gemspec) 
	          + Dir['lib/**/*', 'tests/*']
	s.test_files = s.files.select { |p| p = ~ /^tests\/.*_test.rb$/ }
	s.extra_rdoc_files = s.files.select { |p| p = ~ /^README$/ } << 'LICENSE'
	s.rdoc_options = %w[--line-numbers --inline-source --title Webapp
	                 --main README.rdoc --encoding=UTF-8]

	s.required_ruby_version = '>= 2.3.1'

	s.add_dependency 'rack', '>= 2.0.1'
	s.add_dependency 'tilt', '>= 2.0'
	s.add_dependency 'rack-protection', '>= 1.5'
	s.add_dependency 'mustermann', '>= 0.4'
	s.add_dependency 'sinatra', '>= 1.4.7'
	s.add_dependency 'minitest', '>= 5.9.0'
	s.add_dependency 'rake', '>= 11.2.2'
	s.add_dependency 'bundler', '>= 1.12.5'
end