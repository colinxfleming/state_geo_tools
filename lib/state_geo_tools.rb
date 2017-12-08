require "state_geo_tools/version"
require "state_geo_tools/state_constants"

module StateGeoTools
  include StateConstants

  def self.states
    STATES
  end

  def self.state_codes
    STATE_CODES
  end
end
