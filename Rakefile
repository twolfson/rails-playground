# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

# Load in our `config/application` file
require(File.expand_path("../config/application", __FILE__))

# Load up all tasks from Rake
Rails.application.load_tasks()

# Clear our `rake test` and its variants as we're now using RSpec
#   https://stackoverflow.com/a/13735218
Rake::Task["test"].clear()
Rake::Task["test:all"].clear()
Rake::Task["test:all:db"].clear()
Rake::Task["test:db"].clear()
