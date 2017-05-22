#!/usr/bin/env ruby

require './config/environment'

class MyApp < Sinatra::Base
  # Match shotgun's port when the Ruby file is executed directly
  set :port, 9393

  configure :development do
    use BetterErrors::Middleware
    BetterErrors.application_root = __dir__
  end

  get '/' do
    HtmlBeautifier.beautify slim(:resume)
  end

  # Start the server if the Ruby file is executed directly
  run! if File.expand_path(app_file) == File.expand_path($0)
end
