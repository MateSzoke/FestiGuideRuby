require 'test_helper'

class FestivalTest < ActiveSupport::TestCase
  # def test_the_truth
  test 'the truth' do
    assert true
  end

  test 'cannot save festival without name' do
    festival = FestivalBase.new stage: 'Main Stage'
    assert !festival.save, 'error: cannot save festival without name'
  end

  test 'cannot save festival without stage name' do
    festival = FestivalBase.new name: 'Fishing on Orfu'
    assert !festival.save, 'error: cannot save festival without stage name'
  end

  test 'cannot save festival with existing festival name' do
    festival = FestivalBase.new name: festivals(:sziget).name
    assert !festival.save, 'error: cannot save festival with existing festival name'
  end
end
