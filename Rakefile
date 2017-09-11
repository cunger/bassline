require 'sysrandom/securerandom'
require 'rake/testtask'
require 'dotenv/tasks'

desc 'Run tests'
Rake::TestTask.new do |t|
  t.libs << '.'
  t.libs << 'lib'
  t.warning = false
  t.verbose = true
  t.test_files = FileList['test/*.rb']
end

desc 'Start application'
task rackup: :dotenv do
  system('rackup')
end

task :default => ['rackup']
