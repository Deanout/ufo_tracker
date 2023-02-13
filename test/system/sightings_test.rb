require "application_system_test_case"

class SightingsTest < ApplicationSystemTestCase
  setup do
    @sighting = sightings(:one)
  end

  test "visiting the index" do
    visit sightings_url
    assert_selector "h1", text: "Sightings"
  end

  test "should create sighting" do
    visit sightings_url
    click_on "New sighting"

    fill_in "Date", with: @sighting.date
    fill_in "Time", with: @sighting.time
    fill_in "Ufo", with: @sighting.ufo_id
    click_on "Create Sighting"

    assert_text "Sighting was successfully created"
    click_on "Back"
  end

  test "should update Sighting" do
    visit sighting_url(@sighting)
    click_on "Edit this sighting", match: :first

    fill_in "Date", with: @sighting.date
    fill_in "Time", with: @sighting.time
    fill_in "Ufo", with: @sighting.ufo_id
    click_on "Update Sighting"

    assert_text "Sighting was successfully updated"
    click_on "Back"
  end

  test "should destroy Sighting" do
    visit sighting_url(@sighting)
    click_on "Destroy this sighting", match: :first

    assert_text "Sighting was successfully destroyed"
  end
end
