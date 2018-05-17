# frozen_string_literal: true

module StateGeoTools
  # Methods for counting instances in a string
  module Counters
    def count_instances(string, const)
      instances = const.sort.reverse.map do |geo|
        { geo.to_s => string.scan(geo_regex(geo)).count }
      end
      instances.reduce { |x, y| x.merge(y) }
               .delete_if { |_, v| v.zero? }
    end

    private

    def geo_regex(geo)
      # Need special handling for the great state of Virginia,
      # because of West Virginia.
      return /(?<!west )virginia/i if geo == 'Virginia'
      return /washington(?!, D\.*C\.*)/i if geo == 'Washington'
      /#{geo}/i
    end
  end
end
