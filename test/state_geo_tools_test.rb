require 'test_helper'

# Test the class public api!
class StateGeoToolsTest < Minitest::Spec
  it 'should have a version number' do
    refute_nil StateGeoTools::VERSION
  end

  describe 'constant returns' do
    it 'should spit out states' do
      assert_equal StateGeoCodes.states, StateGeoCodes::States::STATES
    end

    it 'should spit out state codes' do
      assert_equal StateGeoCodes.state_codes,
                   StateGeoCodes::States::STATE_CODES
    end

    it 'should spit out territories' do
      assert_equal StateGeoCodes.territories,
                   StateGeoCodes::Territories::TERRITORIES
    end

    it 'should spit out territory codes' do
      assert_equal StateGeoCodes.territory_codes,
                   StateGeoCodes::Territories::TERRITORY_CODES
    end
  end
end
