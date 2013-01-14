require 'bundler'
Bundler::GemHelper.install_tasks
require 'rspec/core/rake_task'

desc "Run Rspecs"
RSpec::Core::RakeTask.new(:spec)

task :default => :spec