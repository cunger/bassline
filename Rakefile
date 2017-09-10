require 'sysrandom/securerandom'
require 'rake/testtask'

desc 'Run tests'
Rake::TestTask.new do |t|
  t.libs << '.'
  t.libs << 'lib'
  t.warning = false
  t.verbose = true
  t.test_files = FileList['test/*.rb']
end

desc 'Start application'
task :rackup do
  system({'SESSION_SECRET' => SecureRandom.hex(64)}, 'rackup')
end

task :default => ['rackup']
