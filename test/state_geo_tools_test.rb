# frozen_string_literal: true

require 'test_helper'

# Test the class public api!
class StateGeoToolsTest < Minitest::Spec
  it 'should have a version number' do
    refute_nil StateGeoTools::VERSION
  end

  describe 'constant returns' do
    describe 'states' do
      it 'should spit out states' do
        assert_equal StateGeoTools.states, StateGeoTools::States::STATES
      end
    end

    describe 'state_codes' do
      it 'should spit out state codes' do
        assert_equal StateGeoTools.state_codes,
                     StateGeoTools::States::STATE_CODES
      end
    end

    describe 'territories' do
      it 'should spit out territories' do
        assert_equal StateGeoTools.territories,
                     StateGeoTools::Territories::TERRITORIES
      end
    end

    describe 'territory_codes' do
      it 'should spit out territory codes' do
        assert_equal StateGeoTools.territory_codes,
                     StateGeoTools::Territories::TERRITORY_CODES
      end
    end
  end
end
