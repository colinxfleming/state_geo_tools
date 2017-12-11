require 'state_geo_tools/version'
require 'state_geo_tools/state_constants'
require 'state_geo_tools/territory_constants'

# Base class
module StateGeoTools
  include StateConstants
  include TerritoryConstants

  def self.states
    STATES
  end

  def self.state_codes
    STATE_CODES
  end

  def self.territories
    TERRITORIES
  end

  def self.territory_codes
    TERRITORY_CODES
  end
end
