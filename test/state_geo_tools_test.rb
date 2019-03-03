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

  describe 'counters methods' do
    before do
      @str = 'The Simpsons are from New Mexico, and will visit Guam.'
    end

    it 'should count states from a string' do
      result = StateGeoTools.count_states_in @str
      assert_equal result['New Mexico'], 1
    end

    it 'should count territories from a string' do
      result = StateGeoTools.count_territories_in @str
      assert_equal result['Guam'], 1
    end
  end
end
