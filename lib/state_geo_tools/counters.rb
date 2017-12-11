# frozen_string_literal: true

module StateGeoTools
  module Counters
    def count_instances(string, const)
      zone_counts = populate_counter_from const

      scratch_string = string

      # Sort is necessary here because some states are substrings
      # of each other.
      # Looking at you, West Virginia / Virginia.
      zone_counts.keys.sort.each do |zone|
        puts zone
        puts scratch_string.scan(zone)
        zone_counts[zone] = scratch_string.scan(zone).count
        scratch_string.delete! zone
      end

      puts zone_counts
      puts scratch_string

      zone_counts.delete_if { |k, v| v.zero? }.keys
    end

    private

    def populate_counter_from(const)
      hasher = {}
      const.each { |zone| hasher[zone] = 0 }
      hasher
    end
  end
end
