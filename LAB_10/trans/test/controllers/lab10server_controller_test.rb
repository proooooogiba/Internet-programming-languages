require "test_helper"

class Lab10serverControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get lab10server_input_url
    assert_response :success
  end
end
