require 'test_helper'

class ShowTest < ActiveSupport::TestCase
  # def test_the_truth
  test 'the truth' do
    assert true
  end

  test 'cannot save show without performer' do
    show = Show.new time: '20:30'
    assert !show.save, 'error: cannot save show without performer'
  end

  test 'cannot save show without time' do
    show = FestivalBase.new performer: '30Y'
    assert !show.save, 'error: cannot save show without time'
  end

end
