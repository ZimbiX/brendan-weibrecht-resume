require 'fileutils'
require 'sinatra/base'
require './app'

build_dir = Pathname.new 'build'
build_file = Pathname.new 'brendan-weibrecht-resume.html'

task :build do
  begin
    puts 'Starting Rack MockRequest...'
    request = Rack::MockRequest.new MyApp
    puts 'Getting request...'
    body = request.get('/').body
    puts 'Saving to file...'
    FileUtils.mkdir_p build_dir
    IO.write build_dir + build_file, body
    puts 'Build finished'
  rescue
    puts 'Build failed'
    STDERR.puts "\nException encountered; exiting..."
    STDERR.puts $!, $@ # Output exception type and traceback
    exit 1 # Exit with error code
  end
end