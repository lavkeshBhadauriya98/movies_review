require "test_helper"

class DirectorControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get director_create_url
    assert_response :success
  end
end
