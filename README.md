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

Load the recipes from the gem by adding the require statement in `deploy.rb`:

```ruby
require 'unboxed/capistrano/recipes'
```

## Usage

This gem provides a set of Capistrano recipes:

```ruby
# Show currently deployed revision on server
cap deploy:revision
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
