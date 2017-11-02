# spec
This directory was set up to replace the built-in Rails tests (i.e. `ActiveSupport::TestCase`). The default tests can be browsed here:

https://github.com/twolfson/rails-playground/tree/1.0.0/test

## Documentation
### Requests vs controllers
We focus on `requests` based tests (i.e. model + controller + view working togther) vs `controllers` (i.e. controller only) as it reduces likelihood of brittle boundaries and removes the need for contract-based testing of said boundaries

This is agreed upon by `rspec-rails` as well:

<https://github.com/rspec/rspec-rails/tree/v3.7.1#controller-specs>

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
