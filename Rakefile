require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << '.'
  t.libs << 'lib'
  t.warning = false
  t.verbose = true
  t.test_files = FileList['test/*.rb']
end
desc 'Run tests'
