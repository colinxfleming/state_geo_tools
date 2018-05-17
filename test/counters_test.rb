# frozen_string_literal: true

require 'test_helper'

# Test state constant contents
class CountersTest < Minitest::Spec
  describe 'counting' do
    before do
      @states = StateGeoTools.states
    end

    it 'should return a count of values in a string' do
      str = 'Michigan, New Mexico, and California, and Michigan'
      result = StateGeoTools.count_instances(str, @states)
      assert_equal result['New Mexico'], 1
      assert_equal result['Michigan'], 2
      assert_equal result['California'], 1
    end

    it 'should count case-insensitively' do
      str = 'Michigan michigan michigan'
      result = StateGeoTools.count_instances str, @states
      assert_equal result['Michigan'], 3
    end

    it 'should not overlap counts on west virginia and virginia' do
      str = 'West Virginia and Virginia'
      result = StateGeoTools.count_instances str, @states
      assert_equal result['Virginia'], 1
      assert_equal result['West Virginia'], 1
    end

    it 'should strip out empty states' do
      str = 'Oklahoma'
      result = StateGeoTools.count_instances str, @states
      refute result['Michigan']
    end
  end
end
