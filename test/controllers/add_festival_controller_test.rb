require 'test_helper'

class AddFestivalControllerTest < ActionDispatch::IntegrationTest
  test "should get base" do
    get add_festival_base_url
    assert_response :success
  end

  test "should get stage" do
    get add_festival_stage_url
    assert_response :success
  end

end
