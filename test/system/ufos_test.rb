require "application_system_test_case"

class UfosTest < ApplicationSystemTestCase
  setup do
    @ufo = ufos(:one)
  end

  test "visiting the index" do
    visit ufos_url
    assert_selector "h1", text: "Ufos"
  end

  test "should create ufo" do
    visit ufos_url
    click_on "New ufo"

    fill_in "Name", with: @ufo.name
    fill_in "Status", with: @ufo.status
    click_on "Create Ufo"

    assert_text "Ufo was successfully created"
    click_on "Back"
  end

  test "should update Ufo" do
    visit ufo_url(@ufo)
    click_on "Edit this ufo", match: :first

    fill_in "Name", with: @ufo.name
    fill_in "Status", with: @ufo.status
    click_on "Update Ufo"

    assert_text "Ufo was successfully updated"
    click_on "Back"
  end

  test "should destroy Ufo" do
    visit ufo_url(@ufo)
    click_on "Destroy this ufo", match: :first

    assert_text "Ufo was successfully destroyed"
  end
end
