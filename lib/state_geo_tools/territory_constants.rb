# frozen_string_literal: true

module StateGeoTools
  # Constants for US territories
  module Territories
    # An array of hashes of all territories that we map out from.
    TERRITORY_DATA = [
      { name: 'American Samoa', code: 'AS' },
      { name: 'Federated States of Micronesia', code: 'FM' },
      { name: 'Guam', code: 'GU' },
      { name: 'Marshall Islands', code: 'MH' },
      { name: 'Northern Mariana Islands', code: 'MP' },
      { name: 'Palau', code: 'PW' },
      { name: 'Puerto Rico', code: 'PR' },
      { name: 'Virgin Islands', code: 'VI' }
    ].freeze

    # An array of all territory names.
    TERRITORIES = TERRITORY_DATA.map { |terr| terr[:name] }.freeze

    # An array of all two-letter territory codes.
    TERRITORY_CODES = TERRITORY_DATA.map { |terr| terr[:code] }.freeze
  end
end
