module TerritoryConstants
  TERRITORIES_WITH_CODES = [
    { name: 'American Samoa', abbrev: 'AS' },
    { name: 'Federated States of Micronesia', abbrev: 'FM' },
    { name: 'Guam', abbrev: 'GU' },
    { name: 'Marshall Islands', abbrev: 'MH' },
    { name: 'Northern Mariana Islands', abbrev: 'MP' },
    { name: 'Palau', abbrev: 'PW' },
    { name: 'Puerto Rico', abbrev: 'PR' },
    { name: 'Virgin Islands', abbrev: 'VI' }
  ].freeze

  TERRITORIES = TERRITORIES_WITH_CODES.map { |terr| terr[:name] }.freeze
  TERRITORY_CODES = TERRITORIES_WITH_CODES.map { |terr| terr[:abbrev] }.freeze
end
