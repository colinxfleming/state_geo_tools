require 'test_helper'

# Test territory constants
class TerritoryConstantsTest < Minitest::Spec
  describe 'territories' do
    before { @territories = StateGeoTools::Territories::TERRITORIES }
    it 'should return some territories' do
      assert_equal 8, @territories.count
      assert_equal 'American Samoa', @territories.first
    end
  end

  describe 'territory codes' do
    before { @codes = StateGeoTools::Territories::TERRITORY_CODES }
    it 'should return some territory codes' do
      assert_equal 8, @codes.count
      assert_equal 'AS', @codes.first
    end
  end
end
