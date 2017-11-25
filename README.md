# Betters

[![Gem Version](https://badge.fury.io/rb/betters.svg)](https://badge.fury.io/rb/betters)

This is Betters. My personalized version of [Thoughtbot](https://thoughtbot.com)'s  [Bitters scaffolding tool](https://github.com/thoughtbot/bitters).


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'betters'
```

And then execute:

    $ bundle

Or, to use it in a fashion more similar to it's intended purpose, install it as:

    $ gem install betters

## Usage

To install Betters stylesheets in `{current/directory}/base`, run:

    $ betters install
    
To uninstall/remove Betters stylesheets

    $ betters remove
    
To reset/revert changes made to the stylesheets

    $ betters reset

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/matt-daniel-brown/betters.
