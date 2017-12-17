# Itamae::Plugin::Recipe::Swap

[Itamae](https://github.com/itamae-kitchen/itamae) plugin to create Linux swap area.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'itamae-plugin-recipe-swap'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install itamae-plugin-recipe-swap

## Usage

### Recipe
```ruby
# recipe.rb

# itamae v1.5.2 or later
include_recipe "swap"

# older
include_recipe "swap::default"
```

### Node
```yml
# node.yml
swap:
  # path of swap file (default: /swapfile)
  path: /swap_file

  # swap size (default: 512M)
  size: 2G
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/takisawa/itamae-plugin-recipe-swap.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
