# frozen_string_literal: true

require 'state_geo_tools/version'
require 'state_geo_tools/state_constants'
require 'state_geo_tools/territory_constants'
require 'state_geo_tools/counters'

# Because I got sick of copying and pasting arrays of states everywhere, this
# utility provides some convenience methods to get a full set of US states and
# territories. It also includes a pair of convenience methods.
#
# The utility modules are all public, in the event that one should need to
# use them in a slightly different way, but the common use case is in this
#
# See the README for examples.
module StateGeoTools
  extend StateGeoTools::Counters

  # Return an array of states and the District of Columbia.
  def self.states
    States::STATES
  end

  # Return an array of two-letter state codes, and DC.
  def self.state_codes
    States::STATE_CODES
  end

  # Return an array of US territories.
  def self.territories
    Territories::TERRITORIES
  end

  # Return an array of two-letter US territory codes.
  def self.territory_codes
    Territories::TERRITORY_CODES
  end

  # Count instances of states in a string.
  def self.count_states_in(string)
    count_instances string, States::STATES
  end

  # Count instances of territories passed in a string.
  def self.count_territories_in(string)
    count_instances string, Territories::TERRITORIES
  end
end
