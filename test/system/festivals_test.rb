require "application_system_test_case"

class FestivalsTest < ApplicationSystemTestCase
  setup do
    @festival = festivals(:sziget)
    @day = days(:one)
    @show = shows(:sone)
  end

  test "visiting the index" do
    visit festival_bases_path
    assert_selector "title", text: "FestiGuide"
  end

  test "creating a Festival" do
    visit festival_bases_url
    click_on "Add new festival"

    fill_in "name", with: @festival.name
    fill_in "startDate", with: @festival.startDate
    fill_in "endDate", with: @festival.endDate
    fill_in "imgSrc", with: @festival.imgSrc
    click_on "Next"

    fill_in "performer", with: @show.performer
    fill_in "time", with: @show.time
    click_on "ADD FESTIVAL"

    assert_text @festival.name
  end

  test "updating a festival" do
    visit festival_bases_url
    click_on @festival.name
    click_on "EDIT"

    fill_in "name", with: @festival.name
    fill_in "startDate", with: @festival.startDate
    fill_in "endDate", with: @festival.endDate
    fill_in "imgSrc", with: @festival.imgSrc
    click_on "Next"

    fill_in "performer", with: @show.performer
    fill_in "time", with: @show.time
    click_on "EDIT FESTIVAL"

    assert_text @festival.name
  end

  test "destroying a festival" do
    visit festival_bases_url
    click_on @festival.name
    page.accept_confirm do
      click_on "DESTROY", match: :first
    end

    assert_no_text @festival.name
  end
end

