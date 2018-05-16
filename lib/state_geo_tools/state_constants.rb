# frozen_string_literal: true

module StateGeoTools
  module States
    STATE_DATA = [
      { name: 'Alabama', abbrev: 'AL' },
      { name: 'Alaska', abbrev: 'AK' },
      { name: 'Arizona', abbrev: 'AZ' },
      { name: 'Arkansas', abbrev: 'AR' },
      { name: 'California', abbrev: 'CA' },
      { name: 'Colorado', abbrev: 'CO' },
      { name: 'Connecticut', abbrev: 'CT' },
      { name: 'Delaware', abbrev: 'DE' },
      # Statehood for DC: An opinion I am expressing in code by including DC
      { name: 'District of Columbia', abbrev: 'DC', also_known_as: ['Washington, DC', 'Washington DC'] },
      { name: 'Florida', abbrev: 'FL' },
      { name: 'Georgia', abbrev: 'GA' },
      { name: 'Hawaii', abbrev: 'HI' },
      { name: 'Idaho', abbrev: 'ID' },
      { name: 'Illinois', abbrev: 'IL' },
      { name: 'Indiana', abbrev: 'IN' },
      { name: 'Iowa', abbrev: 'IA' },
      { name: 'Kansas', abbrev: 'KS' },
      { name: 'Kentucky', abbrev: 'KY' },
      { name: 'Louisiana', abbrev: 'LA' },
      { name: 'Maine', abbrev: 'ME' },
      { name: 'Maryland', abbrev: 'MD' },
      { name: 'Massachusetts', abbrev: 'MA' },
      { name: 'Michigan', abbrev: 'MI' },
      { name: 'Minnesota', abbrev: 'MN' },
      { name: 'Mississippi', abbrev: 'MS' },
      { name: 'Missouri', abbrev: 'MO' },
      { name: 'Montana', abbrev: 'MT' },
      { name: 'Nebraska', abbrev: 'NE' },
      { name: 'Nevada', abbrev: 'NV' },
      { name: 'New Hampshire', abbrev: 'NH' },
      { name: 'New Jersey', abbrev: 'NJ' },
      { name: 'New Mexico', abbrev: 'NM' },
      { name: 'New York', abbrev: 'NY' },
      { name: 'North Carolina', abbrev: 'NC' },
      { name: 'North Dakota', abbrev: 'ND' },
      { name: 'Ohio', abbrev: 'OH' },
      { name: 'Oklahoma', abbrev: 'OK' },
      { name: 'Oregon', abbrev: 'OR' },
      { name: 'Pennsylvania', abbrev: 'PA' },
      { name: 'Rhode Island', abbrev: 'RI' },
      { name: 'South Carolina', abbrev: 'SC' },
      { name: 'South Dakota', abbrev: 'SD' },
      { name: 'Tennessee', abbrev: 'TN' },
      { name: 'Texas', abbrev: 'TX' },
      { name: 'Utah', abbrev: 'UT' },
      { name: 'Vermont', abbrev: 'VT' },
      { name: 'Virginia', abbrev: 'VA' },
      { name: 'Washington', abbrev: 'WA' },
      { name: 'West Virginia', abbrev: 'WV' },
      { name: 'Wisconsin', abbrev: 'WI' },
      { name: 'Wyoming', abbrev: 'WY' }
    ].freeze

    STATES = STATE_DATA.map { |state| state[:name] }.freeze
    STATE_CODES = STATE_DATA.map { |state| state[:abbrev] }.freeze
  end
end
