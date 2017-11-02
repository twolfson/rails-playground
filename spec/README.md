# spec
This directory was set up to replace the built-in Rails tests (i.e. `ActiveSupport::TestCase`). The default tests can be browsed here:

https://github.com/twolfson/rails-playground/tree/1.0.0/test

## Documentation
### Initial setup
This directory was setup by running the following:

- Based on <https://github.com/rspec/rspec-rails/tree/v3.7.1#installation>
- Install `rspec-rails` in `Gemfile`
- `bundle install`
- Intialize our directory via `rails generate rspec:install`
- Add existing placeholder specs
  ```bash
  rails generate rspec:model Article
  rails generate rspec:controller Articles
  rails generate rspec:controller Welcome
  ```
- Add helper `bin/rspec` for leaner test calls (no long paths in `stdout`)
  ```bash
  bundle binstubs rspec-core
  ```