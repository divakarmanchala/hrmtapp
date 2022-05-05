require "test_helper"

class HolidaysManagementControllerTest < ActionDispatch::IntegrationTest
  test "should get holidaysmanagement" do
    get holidays_management_holidaysmanagement_url
    assert_response :success
  end
end
