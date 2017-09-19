require 'rspec/core/rake_task'
require 'dotenv/tasks'

desc 'Run tests'
RSpec::Core::RakeTask.new(:test)

desc 'Start application'
task rackup: :dotenv do
  system('rackup')
end

task default: ['rackup']
