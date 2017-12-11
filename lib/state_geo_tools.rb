require 'state_geo_tools/version'
require 'state_geo_tools/state_constants'
require 'state_geo_tools/territory_constants'

# Base class
module StateGeoTools
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
end
