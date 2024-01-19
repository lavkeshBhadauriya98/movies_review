require "test_helper"

class StarCastsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get star_casts_create_url
    assert_response :success
  end

  test "should get new" do
    get star_casts_new_url
    assert_response :success
  end
end
