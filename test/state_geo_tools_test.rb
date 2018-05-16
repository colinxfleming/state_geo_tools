require 'test_helper'

# Test the class public api!
class StateGeoToolsTest < Minitest::Spec
  it 'should have a version number' do
    refute_nil StateGeoTools::VERSION
  end

  describe 'constant returns' do
    it 'should spit out states' do
      assert_equal StateGeoTools.states, StateGeoTools::States::STATES
    end

    it 'should spit out state codes' do
      assert_equal StateGeoTools.state_codes,
                   StateGeoTools::States::STATE_CODES
    end

    it 'should spit out territories' do
      assert_equal StateGeoTools.territories,
                   StateGeoTools::Territories::TERRITORIES
    end

    it 'should spit out territory codes' do
      assert_equal StateGeoTools.territory_codes,
                   StateGeoTools::Territories::TERRITORY_CODES
    end
  end

  describe 'counters methods' do
    before do
      @string = 'The Simpsons are from New Mexico, and will visit Guam.'
    end

    it 'should count states from a string' do
      assert_equal StateGeoTools.count_states_in(@string),
                   { 'New Mexico': 1 }
    end

    it 'should count territories from a string' do
      assert_equal StateGeoTools.count_territories_in(@string),
                   { 'Guam': 1 }
    end
  end
end
