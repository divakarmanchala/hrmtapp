require "test_helper"

class ZensarkControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get zensark_home_url
    assert_response :success
  end
end
