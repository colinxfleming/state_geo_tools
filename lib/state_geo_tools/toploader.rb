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

      set.sort_by { |item| topload.index(item) || Float::INFINITY }
    end
  end
end
