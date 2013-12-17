$:.unshift File.expand_path("../lib", __FILE__)

require "bundler/setup"

Dir[File.expand_path("../tasks/*.rake", __FILE__)].each do |task|
  load task
end

# Add "rake release and rake install"
Bundler::GemHelper.install_tasks :name => 'git-trim-whitespace'

task :default => [:test]

task :test do
  system "cd tests && ./run.sh"
  raise "Tests failed" unless $?.exitstatus == 0
end

