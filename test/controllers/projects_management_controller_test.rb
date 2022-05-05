require "test_helper"

class ProjectsManagementControllerTest < ActionDispatch::IntegrationTest
  test "should get projectsmanagement" do
    get projects_management_projectsmanagement_url
    assert_response :success
  end
end
