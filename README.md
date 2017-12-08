# StateGeoTools

These are tools to save me from having to copy and paste the same state
constants across tools. Quick and dirty for now.

TODOS:

* push to rubygems
* ci build
* all those functions I've written that are 'count west virginia and virginia separately'
* option rename DC to whatever bonkers things people put down
* tests


Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/state_geo_tools`. To experiment with that code, run `bin/console` for an interactive prompt.

## Installation (doesn't work yet)

Add this line to your application's Gemfile:

```ruby
gem 'state_geo_tools'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install state_geo_tools

## Usage

### StateGeoTools.states

```
irb(main):001:0> StateGeoTools.states
=> ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming", "American Samoa", "District of Columbia", "Washington, D.C.", "Federated States of Micronesia", "Guam", "Marshall Islands", "Northern Mariana Islands", "Palau", "Puerto Rico", "Virgin Islands"]
```

### StateGeoTools.state_codes

```
irb(main):002:0> StateGeoTools.state_codes
=> ["AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE", "FL", "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC", "ND", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VT", "VA", "WA", "WV", "WI", "WY", "AS", "DC", "DC", "FM", "GU", "MH", "MP", "PW", "PR", "VI"]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/state_geo_tools.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

