require 'fileutils'
require 'sinatra/base'
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
    IO.write build_dir + build_name + '.html', body
    puts 'Generating PDF from HTML...'
    pdfkit = PDFKit.new html, :page_size => 'A4'
    puts 'Saving PDF to file...'
    pdfkit.to_file build_dir + build_name + '.pdf'
    puts 'Build finished'
  rescue
    puts 'Build failed'
    STDERR.puts "\nException encountered; exiting..."
    STDERR.puts $!, $@ # Output exception type and traceback
    exit 1 # Exit with error code
  end
end