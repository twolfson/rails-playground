# rails-playground [![Build status](https://travis-ci.org/twolfson/rails-playground.svg?branch=master)](https://travis-ci.org/twolfson/rails-playground)
Playground environment for Ruby on Rails

This is to provide a proof of concept and exploration space for taking my existing thoughts and aligning them with Rails' opinions. We've used the following documentation along the way:

- <http://guides.rubyonrails.org/v4.2/>, up to "6 Adding a Second Model" exclusively

Topics to explore:

- [x] Implement CRUD via Rails
- [ ] Add server tests
    - [x] GET (no form data)
    - [x] POST/PUT/PATCH/DELETE (form data)
    - [ ] 404 item not found (only have verified error being raised)
    - [ ] 404 route not found (only have verified error being raised)
- [ ] Watch support for tests
    - See this is possible via `spring` or `guard`
- [ ] Integrate `expected_status` into all `get`/`post`/etc calls
- [ ] Setting up CSRF in tests (ignored by default for tests if I saw correctly)
- [ ] Preventing `:focus` in CI tests via end-of-tests catch
- [ ] Implement XHR call via Rails
- [ ] Add browser tests and contract tests
- [ ] Add linting
- [ ] Document `pry` usage (including `binding.pry()`)
- [ ] Document `:focus` usage
- [ ] Document `gemrat` usage

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
### Quick notes
Rails has a good chunk of magic baked into it. Here's some notes about what's magical/not:

- MVC model is used for separation of responsibilities

#### Routing
- Routes defined in `config/routes.rb`
    - Mostly behave as one expects except for `resources` which provides CRUD methods for its matching controller. Here are examples for `articles`
        - These were resolved via `rake routes`
        - `GET  /articles -> ArticleController#index`
        - `POST /articles -> ArticleController#create`
            - Route to receive `#new` submissions
        - `GET  /articles/new -> ArticleController#new`
            - Page to create a new resource (recommended to re-render page on failure)
        - `GET  /articles/:id/edit -> ArticleController#edit`
            - Page to edit an existing resource (recommended to re-render page on failure)
        - `GET  /articles/:id -> ArticleController#show`
        - `PATCH /articles/:id -> ArticleController#update`
            - Route to receive `#edit` submissions
        - `PUT /articles/:id -> ArticleController#update`
        - `DELETE  /articles/:id -> ArticleController#destroy`
        - These also might support `.json`/`.csv`/etc formats but I have yet to explore it
- We have magic omni-present methods for resolving resource URLs
    - These all have `*_url` equivalents which include hostname and protocol (i.e. `*_path = /path/to/resource`, `*_url` = `http://localhost:3000/path/to/resource`)
    - `articles_path` - Returns path for `index` method of `ArticleController`
    - `new_article_path` - Returns path for `new` method of `ArticleController`
    - `edit_article_path(article)` - Returns path for given `article` via `edit` method of `ArticleController`
    - `article_path(article)` - Returns path for given article via `show` method of `ArticleController`

#### Models
- Models are generally accessible from the rest of the application without requiring them

#### Controllers
- Controller methods will automatically call their `view` equivalent when no other `render()` call has been specified
    - For example `ArticleController#new()` will render `views/articles/new.html.erb`
- Rails has some foolproof parameter handling (i.e. requires specifying `require` and `permit` for any keys/values we plan on reading from) :100:

#### Views
- Partials typically use an `_` prefix but their inclusion call (i.e. `render()` doesn't need to pass in said prefix
- `form_for()` does some magic introspection of the resource it's building a form for and determines the appropriate controller and way to create/update said resource
- `form_for()`  generates nested objects and unlikely-to-conflict ids for its form elements
    - See example here: https://github.com/twolfson/rails-playground/blob/a6ff3b3172d0b0e6b3331d4e55ee7722c15a7524/app/views/articles/_form.html.erb#L1-L3
- Rails isn't bulletproof as it will still need objects to look over errors for (can't iterate over `nil`)

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
