# frozen_string_literal: true

module StateGeoTools
  # Sometimes you want to pull some entries up.
  module Toploader
    TOPLOAD_ERROR = 'is not in the set and not toploadable'

    class NotInSetError < StandardError; end

    def topload_items(set, topload)
      topload.each do |x|
        raise(NotInSetError, "#{x} #{TOPLOAD_ERROR}") unless set.include?(x)
      end

      # If not in the topload set, offset the ordering by a few hundred so it
      # maintains its current order
      set.sort_by { |item| topload.index(item) || (500 + set.index(item)) }
    end
  end
end
