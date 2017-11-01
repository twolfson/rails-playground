# rails-playground
Playground environment for Ruby on Rails

This is to provide a proof of concept and exploration space for taking my existing thoughts and aligning them with Rails' opinions. We've used the following documentation along the way:

- <http://guides.rubyonrails.org/v4.2/>, up to "5.11 Updating Articles" exclusively

## Getting started
Before getting our repo set up, please verify the following dependencies are installed:

- Ruby >= 2.2.1
    - We recommend using [chruby][] and [ruby-install][] to avoid interfering with your OS' Ruby
    - Alternatively, a Docker container would alleviate these issues as well
- Bundler (`gem install bundler`)
- [SQLite3][]

[chruby]: https://github.com/postmodern/chruby
[ruby-install]: https://github.com/postmodern/ruby-install
[SQLite3]: https://www.sqlite.org/

To get our repo set up locally, run the following:

```bash
# Clone our repository
git clone git@github.com:twolfson/rails-playground.git
cd rails-playground

# Install our local files
bundle install

# Start our server
bin/rails server
# => Booting WEBrick
# => Rails 4.2.10 application starting in development on http://localhost:3000
```

Our application is now running and accessible at <http://localhost:3000/>

## Documentation
### Initial setup
We initially set up this repo via the following lines of code:

```bash
# Switch to Ruby 2
chruby 2

# Set up a Gemfile with Rails
gemrat rails
# Manually adjust Rails version in Gemfile and add parens

# Configure Bundler config manually

# Run bundler install
bundle install

# Run Rails setup in current directory (approving overwrites for all files)
bundle exec rails new .
```

## Donating
Support this project and [others by twolfson][twolfson-projects] via [donations][twolfson-support-me].

<http://twolfson.com/support-me>

[twolfson-projects]: http://twolfson.com/projects
[twolfson-support-me]: http://twolfson.com/support-me

## Unlicense
As of July 29 2017, Todd Wolfson has released this repository and its contents to the public domain.

It has been released under the [UNLICENSE][].

[UNLICENSE]: UNLICENSE
