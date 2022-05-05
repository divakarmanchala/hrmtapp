require "test_helper"

class DesignationManagementControllerTest < ActionDispatch::IntegrationTest
  test "should get designationmanagement" do
    get designation_management_designationmanagement_url
    assert_response :success
  end
end
