require 'rubygems'
require 'rake'

ENV['BUNDLE_GEMFILE'] = File.dirname(__FILE__) + '/test/rails_root/Gemfile'

#require 'rake'
require 'rake/testtask'
require 'cucumber/rake/task'
require 'spec/rake/spectask'

namespace :test do
  Rake::TestTask.new(:basic => %w(test:generator:rails_setup test:generator:exception_migration)) do |task|
    task.libs << "lib"
    task.libs << "test"
    task.pattern = "test/**/*_test.rb"
    #task.verbose = false
  end

  Cucumber::Rake::Task.new(:features) do |t|
    t.cucumber_opts = "--format progress"
    t.profile = 'features'
  end

  namespace :generator do

    task :rails_setup do
      system "cd test && rails new rails_root --skip"
    end

    task :exception_migration do
      system "cd test/rails_root && bundle install && ./script/rails generate exception_logger:migration && rake db:migrate db:test:prepare"
    end
  end

end
