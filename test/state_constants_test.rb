require 'test_helper'

class StateConstantsTest < Minitest::Spec
  describe 'states' do
    before { @states = StateGeoTools::States::STATES }
    it 'should return some states' do
      assert_equal 51, @states.count
      assert_equal 'Alabama', @states.first
    end
  end

  describe 'state codes' do
    before { @codes = StateGeoTools::States::STATE_CODES }
    it 'should return some state codes' do
      assert_equal 51, @codes.count
      assert_equal 'AL', @codes.first
    end
  end
end
