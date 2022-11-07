require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get servers" do
    get pages_servers_url
    assert_response :success
  end
end
