# Define our package source
source('https://rubygems.org')

# Define our common dependencies
gem('rails', '~> 5.1.2')
gem('sqlite3', '~> 1.3.13')
gem('puma', '~> 3.7') # app server
gem('sass-rails', '~> 5.0')
gem('uglifier', '~> 1.3.0')
gem('turbolinks', '~> 5.0.1')
gem('jbuilder', '~> 2.5')

group(:development, :test) do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem('byebug', '~> 9.0.6', :platforms => [:mri, :mingw, :x64_mingw])
  gem('capybara', '~> 2.13')
end

group(:development) do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem('web-console', '~> 3.3.0')
  gem('listen', '>= 3.0.5', '< 3.2')
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem('spring', '~> 2.0.2')
  gem('spring-watcher-listen', '~> 2.0.0')
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem('tzinfo-data', '~> 1.2.3', :platforms => [:mingw, :mswin, :x64_mingw, :jruby])
