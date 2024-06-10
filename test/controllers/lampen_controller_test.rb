require "test_helper"

class LampenControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lampen_index_url
    assert_response :success
  end
end
