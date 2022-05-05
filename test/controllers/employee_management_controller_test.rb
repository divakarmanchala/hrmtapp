require "test_helper"

class EmployeeManagementControllerTest < ActionDispatch::IntegrationTest
  test "should get employeemanagement" do
    get employee_management_employeemanagement_url
    assert_response :success
  end
end
