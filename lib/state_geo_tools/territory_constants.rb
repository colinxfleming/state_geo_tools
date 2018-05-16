# frozen_string_literal: true

module StateGeoTools
  module Territories
    TERRITORY_DATA = [
      { name: 'American Samoa', abbrev: 'AS' },
      { name: 'Federated States of Micronesia', abbrev: 'FM' },
      { name: 'Guam', abbrev: 'GU' },
      { name: 'Marshall Islands', abbrev: 'MH' },
      { name: 'Northern Mariana Islands', abbrev: 'MP' },
      { name: 'Palau', abbrev: 'PW' },
      { name: 'Puerto Rico', abbrev: 'PR' },
      { name: 'Virgin Islands', abbrev: 'VI' }
    ].freeze

    TERRITORIES = TERRITORY_DATA.map { |terr| terr[:name] }.freeze
    TERRITORY_CODES = TERRITORY_DATA.map { |terr| terr[:abbrev] }.freeze
  end
end
