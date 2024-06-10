require "test_helper"

class FelveszemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @felveszem = felveszems(:one)
  end

  test "should get index" do
    get felveszems_url
    assert_response :success
  end

  test "should get new" do
    get new_felveszem_url
    assert_response :success
  end

  test "should create felveszem" do
    assert_difference("Felveszem.count") do
      post felveszems_url, params: { felveszem: { content: @felveszem.content } }
    end

    assert_redirected_to felveszem_url(Felveszem.last)
  end

  test "should show felveszem" do
    get felveszem_url(@felveszem)
    assert_response :success
  end

  test "should get edit" do
    get edit_felveszem_url(@felveszem)
    assert_response :success
  end

  test "should update felveszem" do
    patch felveszem_url(@felveszem), params: { felveszem: { content: @felveszem.content } }
    assert_redirected_to felveszem_url(@felveszem)
  end

  test "should destroy felveszem" do
    assert_difference("Felveszem.count", -1) do
      delete felveszem_url(@felveszem)
    end

    assert_redirected_to felveszems_url
  end
end
