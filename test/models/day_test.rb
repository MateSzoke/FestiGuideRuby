require 'test_helper'

class DayTest < ActiveSupport::TestCase
  # def test_the_truth
  test 'the truth' do
    assert true
  end

  test 'cannot save day without date' do
    day = Day.new
    assert !day.save, 'cannot save day without date'
  end

end
