require 'test_helper'

class FestivalControllerTest < ActionDispatch::IntegrationTest
  setup do
    @festival = festivals(:strand)
    post '/festivals/create', params: {name: festivals(:strand)}
  end

  test "should get index" do
    get festival_bases_url
    assert_response :success
  end

  test "should get new" do
    get new_festival_basis_url
    assert_response :success
  end

  test "should create festival" do
    assert_difference('FestivalBase.count') do
      post festival_bases_url, params: {festival: {name: @festival.name, startDate: @festival.startDate, endDate: @festival.endDate, stage: @festival.stage}}
    end

    assert_redirected_to festival_bases_path(FestivalBase.last)
  end

  test "should show festival" do
    get festival_bases_path(@festival)
    assert_response :success
  end

  test "should get edit" do
    get edit_festival_basis_path(@festival)
    assert_response :success
  end

  test "should update festival" do
    patch task_url(@festival), params: {festival: {name: @festival.name, startDate: @festival.startDate, endDate: @festival.endDate, stage: @festival.stage}}
    assert_redirected_to festival_bases_path(@festival)
  end

  test "should destroy festival" do
    assert_difference('FestivalBase.count', -1) do
      delete festival_bases_path(@festival)
    end

    assert_redirected_to festival_bases_path
  end

end
