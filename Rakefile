require 'rake/clean'
require 'rubygems'
require 'rubygems/package_task'
require 'cucumber'
require 'cucumber/rake/task'
require 'rspec/core/rake_task'
require 'yard'

spec = eval(File.read('statowl.gemspec'))

Gem::PackageTask.new(spec) do |pkg|
end

desc 'Run RSpecs'
RSpec::Core::RakeTask.new do |t|
  t.rspec_opts = ["--color", "--format", "documentation"]
end

CUKE_RESULTS = 'doc/cuke_results.html'
CLEAN << CUKE_RESULTS

desc 'Run features'
Cucumber::Rake::Task.new(:features) do |t|
  opts = "features --format html -o #{CUKE_RESULTS} --format pretty -x"
  opts += " --tags #{ENV['TAGS']}" if ENV['TAGS']
  t.cucumber_opts =  opts
  t.fork = false
end

YARD::Rake::YardocTask.new do |t|
end

task :default => :features