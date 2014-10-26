#!/usr/bin/env ruby

require 'rubygems'
require 'bundler/setup'

require 'sinatra/base'
require 'sass'
require 'redcarpet'

class MyApp < Sinatra::Base

  # Match shotgun's port when the Ruby file is executed directly
  set :port, 9393

  get '/' do
    haml :resume
  end

  # Start the server if the Ruby file is executed directly
  run! if app_file == $0

end