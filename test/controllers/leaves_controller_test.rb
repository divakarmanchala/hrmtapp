require "test_helper"

class LeavesControllerTest < ActionDispatch::IntegrationTest
  test "should get leaves" do
    get leaves_leaves_url
    assert_response :success
  end
end
