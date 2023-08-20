#!/usr/bin/env ruby

require 'rubygems'
require 'bundler/setup'

require 'sinatra/base'
require 'sass'
require 'redcarpet'

require 'haml'
require 'haml/filters/maruku'

class MyApp < Sinatra::Base
  # Match shotgun's port when the Ruby file is executed directly
  set :port, 9393

  get '/' do
    haml :resume
  end

  # Start the server if the Ruby file is executed directly
  run! if File.expand_path(app_file) == File.expand_path($0)
end
