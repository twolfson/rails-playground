# Define our source for gems
source("https://rubygems.org")

# Restrict our Ruby version
ruby("~> 2.2")

# Define our common dependencies
gem("rails", "~> 4.2.10")
# Use sqlite3 as the database for Active Record
gem("sqlite3")
# Use SCSS for stylesheets
gem("sass-rails", "~> 5.0")
# Use Uglifier as compressor for JavaScript assets
gem("uglifier", "~> 1.3.0")
# Use CoffeeScript for .coffee assets and views
gem("coffee-rails", "~> 4.1.0")
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem("therubyracer", :platforms => :ruby)

# Use jquery as the JavaScript library
gem("jquery-rails")
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem("turbolinks")
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem("jbuilder", "~> 2.0")
# bundle exec rake doc:rails generates the API under doc/api.
gem("sdoc", "~> 0.4.0", :group => :doc)

# Use ActiveModel has_secure_password
# gem("bcrypt", "~> 3.1.7")

# Use Unicorn as the app server
# gem("unicorn")

# Use Capistrano for deployment
# gem("capistrano-rails", :group => :development)

# Define development/testing dependencies
group(:development, :test) do
  gem("rspec-rails", "~> 3.6")
  gem("pry-rails", "~> 0.3.6")
  gem("factory_girl_rails", "~> 4.8.0")
end

# Define development only dependencies
group(:development) do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem("web-console", "~> 2.0")

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem("spring")
end

# Define testing only dependencies
group(:test) do
  gem("capybara", "~> 2.13.0")
  gem("capybara-webkit", "~> 1.14.0")
end
