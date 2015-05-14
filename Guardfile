guarding = Proc.new do
  watch(/.*/)
  ignore_dirs = %w[
    .sass-cache
    applications
    build
    cover-letters
  ].join '|'
  ignore(/^(#{ignore_dirs})\//)
end

guard 'rake', :task => 'build' do
  guarding.call
end

guard 'livereload' do
  guarding.call
end
