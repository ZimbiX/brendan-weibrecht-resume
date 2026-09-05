#!/usr/bin/env ruby

require 'rubygems'
require 'bundler/setup'

require 'sinatra/base'
require 'sass'
require 'redcarpet'
require 'tilt'

require 'haml'

# Haml's :markdown filter renders through Tilt without passing any options
# along, so bake the ones we want into the template class itself:
# smartypants for en dashes and curly quotes, with_toc_data for heading ids
class MarkdownTemplate < Tilt::RedcarpetTemplate
  def prepare
    @options.merge! smartypants: true, with_toc_data: true
    super
  end
end
Tilt.register MarkdownTemplate, 'markdown', 'md', 'mkd'

class MyApp < Sinatra::Base
  set :port, 9393

  get '/' do
    haml :resume
  end

  # Start the server if the Ruby file is executed directly
  run! if File.expand_path(app_file) == File.expand_path($0)
end
