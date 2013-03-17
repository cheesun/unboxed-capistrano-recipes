# Unboxed Capistrano recipes

A list of Capistrano recipes that Unboxed Consulting commonly uses.

## Installation

Add this line to your application's Gemfile under the `development` group:

```ruby
group :development do
  gem 'unboxed-capistrano-recipes', :require => false
end
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install unboxed-capistrano-recipes

Allow Capistrano to load recipes via Rubygems. Add the following to the top of your `Capfile`:

```ruby
require 'rubygems'
```

# Usage

This gem provides some base recipes that are automatically loaded when Capistrano initialises. Other recipes and tasks will have to be loaded explicitly in order to avoid recipe conflicts and to keep `deploy.rb` readable and explicit.

### Base recipes

Load the base recipes from the gem by adding the require statement in `deploy.rb`:

```ruby
require 'unboxed/capistrano/recipes'
```

The following tasks will be loaded:

| Task            | Description                                |
| --------------- | ------------------------------------------ |
| deploy:revision | Show currently deployed revision on server |

### Passenger deployment

In order to deploy via [Passenger](http://www.phusionpassenger.com/) (mod_rails) you will have to load the tasks explicity in `deploy.rb`:

```ruby
require 'unboxed/capistrano/recipes/deploy/passenger'
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
