# frozen_string_literal: true

require 'test_helper'

# Test topload functionality
class ToploaderTest < Minitest::Spec
  describe 'states' do
    it 'should topload' do
      assert_equal %w[Michigan Texas Alabama],
                   StateGeoTools.states(topload: %w[Michigan Texas])[0..2]
    end
  end

  describe 'state_codes' do
    it 'should topload' do
      assert_equal %w[MI TX AL],
                   StateGeoTools.state_codes(topload: %w[MI TX])[0..2]
    end
  end

  describe 'territories' do
    it 'should topload' do
      assert_equal ['Puerto Rico', 'Palau', 'American Samoa'],
                   StateGeoTools.territories(topload: ['Puerto Rico', 'Palau'])[0..2]
    end
  end

  describe 'territory_codes' do
    it 'should topload' do
      assert_equal %w[PR PW AS],
                   StateGeoTools.territory_codes(topload: %w[PR PW])[0..2]
    end
  end

  describe 'erroring' do
    it 'should raise an error when trying to topload items not in the set' do
      assert_raises StateGeoTools::Toploader::NotInSetError do
        StateGeoTools.state_codes topload: ['Notastate']
      end
    end
  end
end
