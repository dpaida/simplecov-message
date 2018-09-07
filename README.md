# simplecov-message

Provides SimpleCov profiles for different minimum coverage levels that print out a message in red or green text after tests have been run as to whether the minimum coverage level was satisfied.

Profiles provided are:
* require_full_coverage - Sets minimum_coverage to 100%
* require_90pct_coverage - Sets minimum_coverage to 90%
* require_80pct_coverage - Sets minimum_coverage to 80%

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simplecov-message'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simplecov-message

## Usage
Add a require for simplecov-message to your rails_helper file (or wherever you are starting SimpleCov from).
```ruby
require 'simplecov'
require 'simplecov-message'
```

Then just start SimpleCov with the profile for the desired minimum coverage level.
```ruby
SimpleCov.start 'require_full_coverage'
```

If needed, provide any configuration settings using a block.
```ruby
SimpleCov.start 'require_full_coverage' do
  add_filter 'test'
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dpaida/simplecov-message.
