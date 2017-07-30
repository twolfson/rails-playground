# rails-playground
Playground environment for Ruby on Rails

## Getting started
Before getting our repo set up, please verify the following dependencies are installed:

- Ruby >= 2.2.1
    - We recommend using [chruby][] and [ruby-install][] to avoid interfering with your OS' Ruby
    - Alternatively, a Docker container would alleviate these issues as well
- Bundler (`gem install bundler`)

[chruby]: https://github.com/postmodern/chruby
[ruby-install]: https://github.com/postmodern/ruby-install

To get our repo set up locally, run the following:

```bash
# Clone our repository
git clone git@github.com:twolfson/rails-playground.git
cd rails-playground

# Install our local files
bundle install

# Start our server
bin/rails server
# => Booting Puma
# => Rails 5.1.2 application starting in development on http://localhost:3000
```

Our application is now running and accessible at <http://localhost:3000/>

## Documentation
TODO: Add documentation

## Donating
Support this project and [others by twolfson][twolfson-projects] via [donations][twolfson-support-me].

<http://twolfson.com/support-me>

[twolfson-projects]: http://twolfson.com/projects
[twolfson-support-me]: http://twolfson.com/support-me

## Unlicense
As of July 29 2017, Todd Wolfson has released this repository and its contents to the public domain.

It has been released under the [UNLICENSE][].

[UNLICENSE]: UNLICENSE
