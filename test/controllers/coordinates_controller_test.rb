require "test_helper"

class CoordinatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coordinate = coordinates(:one)
  end

  test "should get index" do
    get coordinates_url
    assert_response :success
  end

  test "should get new" do
    get new_coordinate_url
    assert_response :success
  end

  test "should create coordinate" do
    assert_difference("Coordinate.count") do
      post coordinates_url, params: { coordinate: { lat: @coordinate.lat, long: @coordinate.long, sighting_id: @coordinate.sighting_id } }
    end

    assert_redirected_to coordinate_url(Coordinate.last)
  end

  test "should show coordinate" do
    get coordinate_url(@coordinate)
    assert_response :success
  end

  test "should get edit" do
    get edit_coordinate_url(@coordinate)
    assert_response :success
  end

  test "should update coordinate" do
    patch coordinate_url(@coordinate), params: { coordinate: { lat: @coordinate.lat, long: @coordinate.long, sighting_id: @coordinate.sighting_id } }
    assert_redirected_to coordinate_url(@coordinate)
  end

  test "should destroy coordinate" do
    assert_difference("Coordinate.count", -1) do
      delete coordinate_url(@coordinate)
    end

    assert_redirected_to coordinates_url
  end
end
