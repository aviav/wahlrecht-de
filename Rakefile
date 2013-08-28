# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "wahlrecht_de"
  gem.homepage = "http://github.com/Tobi-Fankhaenel/wahlrecht_de"
  gem.license = "MIT"
  gem.summary = %Q{Provides summary analysis of current poll results from wahlrecht.de}
  gem.description = File.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
  gem.email = "fank1@gmx.de"
  gem.authors = ["Tobi Fankhänel"]
  gem.platform = Gem::Platform::RUBY
  gem.required_ruby_version = '>=2.0'
  gem.files = Dir['**/**']
  gem.executables = [ 'wahlrecht_de' ]
  gem.has_rdoc = true
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

RSpec::Core::RakeTask.new(:rcov) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :default => :spec

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "wahlrecht_de #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
