# StateGeoTools

[![Build Status](https://travis-ci.org/colinxfleming/state_geo_tools.svg?branch=master)](https://travis-ci.org/colinxfleming/state_geo_tools)

These are tools to save me from having to copy and paste the same state
constants across tools when I need to iterate thru or populate a list of
states (which is basically all the time).

[Docs are here.](https://www.rubydoc.info/github/colinxfleming/state_geo_tools/master)

TODOS:

* option rename DC to whatever bonkers things people put down in text
* count DC (and other states, I guess) when AKA strings show up

## Installation

Add this line to your application's Gemfile:

```rb
gem 'state_geo_tools' 
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install state_geo_tools

## Usage

### States and territories

This provides access to an array of states (and Washington, DC, which
is not a state because of (longstanding injustice by the U.S. Congress)[https://statehood.dc.gov/])
and territories, as strings.

```rb
> require 'state_geo_tools'
> StateGeoTools.states
=> ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "District of Columbia", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]
> StateGeoTools.territories
=> ["American Samoa", "Federated States of Micronesia", "Guam", "Marshall Islands", "Northern Mariana Islands", "Palau", "Puerto Rico", "Virgin Islands"]
```

### State codes and territory codes

Prefer a two letter code instead of the full string? You're covered:

```rb
> require 'state_geo_tools'
> StateGeoTools.state_codes
=> ["AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE", "DC", "FL", "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC", "ND", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VT", "VA", "WA", "WV", "WI", "WY"]
> StateGeoTools.territory_codes
=> ["AS", "FM", "GU", "MH", "MP", "PW", "PR", "VI"]
```

### Toploading

For convenience, an optional argument is provided to pull certain items up to
the top of a list. Pass `topload: [elements]` to `states`, `territories`,
`state_codes`, or `territory_codes` to pull a few to the front. For example:

```rb
> require 'state_geo_tools'
> StateGeoTools.state_codes(topload: ['MI', 'DC', 'TX'])
=> ["MI", "DC", "TX", "AR", "CA", "CO", "CT", "DE", "FL", "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", "MA", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC", "ND", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "UT", "VT", "VA", "WA", "WV", "WI", "AL", "WY", "AK", "AZ"]
```

### Count instances of states in a string

There is a convenience method provided to scan a string for state or territory
names and return a count. 

Coming eventually: Handling all the aliases for Washington, DC.

```rb
> require 'state_geo_tools'
> StateGeoTools.count_states_in('Pantera were from Texas, I saw them in Indiana')
=> {"Texas"=>1, "Indiana"=>1}

> StateGeoTools.count_territories_in('The Simpsons are going to Guam!')
=> {"Guam"=>1}

# There's some special handling for Washington/Washington DC and Virginia/West
# Virginia. It doesn't work flawlessly yet, so heads up!
> StateGeoTools.count_states_in('Virginia and West Virginia are for lovers')
=> {"West Virginia"=>1, "Virginia"=>1}

> StateGeoTools.count_states_in('Washington and Washington, DC are on opposite sides of the country')
=> {"Washington"=>1}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`rake test` to run the tests. You can also run `bin/console` for an interactive
prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To
release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release`, which will create a git tag for the version, push
git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/colinxfleming/state_geo_tools.

## License

The gem is available as open source under the terms of the
[MIT License](http://opensource.org/licenses/MIT).
