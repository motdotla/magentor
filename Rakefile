begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name     = "magentor"
    gemspec.summary  = "Ruby wrapper for the Magentor xmlrpc api"
    gemspec.email    = "preston.stuteville@gmail.com"
    gemspec.homepage = "http://github.com/pstuteville/magentor"
    gemspec.authors  = ["Preston Stuteville"]
    
    gemspec.has_rdoc = true
    gemspec.rdoc_options = ["--main", "README.rdoc", "--inline-source", "--line-numbers"]
    gemspec.extra_rdoc_files = ["README.rdoc"]

    gemspec.add_development_dependency('rspec')
  end
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new('spec')

task :default => :spec