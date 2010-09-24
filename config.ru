# This file is used by Rack-based servers to start the application.

require 'pp'

File.open("/tmp/env.#{$$}", 'w') do |f|
  f << ENV.sort.pretty_inspect
end

$:.unshift "/usr/jruby-bin/lib/ruby/gems/1.8/gems/bundler-1.0.0/lib"
require 'bundler/setup'

require ::File.expand_path('../config/environment',  __FILE__)
run Rails3Test::Application
