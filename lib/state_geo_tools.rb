# frozen_string_literal: true

require 'state_geo_tools/version'
require 'state_geo_tools/state_constants'
require 'state_geo_tools/territory_constants'
require 'state_geo_tools/counters'

# Base class / public API.
module StateGeoTools
  extend StateGeoTools::Counters

  def self.states
    States::STATES
  end

  def self.state_codes
    States::STATE_CODES
  end

  def self.territories
    Territories::TERRITORIES
  end

  def self.territory_codes
    Territories::TERRITORY_CODES
  end

  def self.count_states_in(string)
    count_instances string, States::STATES
  end

  def self.count_territories_in(string)
    count_instances string, Territories::TERRITORIES
  end
end
