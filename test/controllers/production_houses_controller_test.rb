require "test_helper"

class ProductionHousesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get production_houses_create_url
    assert_response :success
  end

  test "should get new" do
    get production_houses_new_url
    assert_response :success
  end
end
