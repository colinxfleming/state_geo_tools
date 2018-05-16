# frozen_string_literal: true

module StateGeoTools
  # Methods for counting instances in a string
  module Counters
    def count_instances(string, const)
      instances = const.sort.reverse.map do |geo|
        { geo => string.scan(/#{geo}/i).count }
      end
      instances.reduce { |x, y| x.merge(y) }.delete_if { |_, v| v.zero? }
    end
  end
end
