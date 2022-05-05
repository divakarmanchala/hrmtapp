require "test_helper"

class AttendanceControllerTest < ActionDispatch::IntegrationTest
  test "should get attendance" do
    get attendance_attendance_url
    assert_response :success
  end
end
