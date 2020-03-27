require 'test_helper'

class FestivalControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get festival_new_url
    assert_response :success
  end

end
