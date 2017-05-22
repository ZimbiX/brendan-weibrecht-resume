require 'fileutils'

require './app'

build_dir = Pathname.new 'build'
build_name = Pathname.new 'brendan-weibrecht-resume'

task :build do
  begin
    puts 'Starting Rack MockRequest...'
    request = Rack::MockRequest.new MyApp
    puts 'Getting request...'
    body = request.get('/').body
    puts 'Saving HTML to file...'
    FileUtils.mkdir_p build_dir
    IO.write build_dir + "#{build_name}.html", body
    puts 'Build finished'
  rescue
    puts 'Build failed'
    STDERR.puts "\nException encountered; exiting..."
    STDERR.puts $!, $@ # Output exception type and traceback
    exit 1 # Exit with error code
  end
end
