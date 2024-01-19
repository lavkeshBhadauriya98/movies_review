require "test_helper"

class DirectorsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get directors_create_url
    assert_response :success
  end
end
