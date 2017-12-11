# frozen_string_literal: true

module StateGeoTools
  module Counters
    def count_instances(string, const)
      zone_counts = populate_counter_from const

      puts zone_counts
      scratch_string = string

      # Reverse is necessary here because some states are substrings
      # of each other.
      # Looking at you, West Virginia / Virginia.
      const.reverse.each do |zone|
        puts zone
        puts scratch_string.scan(zone)
        zone_counts[zone] = scratch_string.scan(zone).count
        scratch_string = scratch_string.delete zone
      end

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
