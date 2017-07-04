require File.join([File.dirname(__FILE__),'lib','statowl','version.rb'])
spec = Gem::Specification.new do |s|
  s.name = 'statowl'
  s.version = Statowl::VERSION
  s.description = 'convenient ways to compute statistics'
  s.authors = ['ALEXANDER']
  s.platform = Gem::Platform::RUBY
  s.summary = 'Statistics utilities and services'
  s.files = Dir["lib/**/*"]
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc']
  s.rdoc_options << '--title' << 'statowl' << '--main' << 'README.rdoc' << '--ri'
  s.bindir = 'bin'
  s.executables << 'statowl'
  s.add_development_dependency('rake')
  s.add_development_dependency('cucumber')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli')
end