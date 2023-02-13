require "test_helper"

class UfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ufo = ufos(:one)
  end

  test "should get index" do
    get ufos_url
    assert_response :success
  end

  test "should get new" do
    get new_ufo_url
    assert_response :success
  end

  test "should create ufo" do
    assert_difference("Ufo.count") do
      post ufos_url, params: { ufo: { name: @ufo.name, status: @ufo.status } }
    end

    assert_redirected_to ufo_url(Ufo.last)
  end

  test "should show ufo" do
    get ufo_url(@ufo)
    assert_response :success
  end

  test "should get edit" do
    get edit_ufo_url(@ufo)
    assert_response :success
  end

  test "should update ufo" do
    patch ufo_url(@ufo), params: { ufo: { name: @ufo.name, status: @ufo.status } }
    assert_redirected_to ufo_url(@ufo)
  end

  test "should destroy ufo" do
    assert_difference("Ufo.count", -1) do
      delete ufo_url(@ufo)
    end

    assert_redirected_to ufos_url
  end
end
