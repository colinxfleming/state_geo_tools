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
      assert_equal StateGeoTools.count_instances(str, @states),
                   { 'New Mexico' => 1, 'Michigan' => 2, 'California' => 1 }
    end

    it 'should count case-insensitively' do
      str = 'Michigan michigan michigan'
      assert_equal StateGeoTools.count_instances(str, @states),
                   { 'Michigan' => 3 }
    end

    it 'should not overlap counts on west virginia and virginia' do
      str = 'West Virginia and Virginia'
      assert_equal StateGeoTools.count_instances(str, @states),
                   { 'Virginia' => 1, 'West Virginia' => 1 }
    end
  end
end
