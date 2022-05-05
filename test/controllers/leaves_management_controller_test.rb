require "test_helper"

class LeavesManagementControllerTest < ActionDispatch::IntegrationTest
  test "should get leavesmanagement" do
    get leaves_management_leavesmanagement_url
    assert_response :success
  end
end
