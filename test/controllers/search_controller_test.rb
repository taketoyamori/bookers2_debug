require 'test_helper'

class SeachControllerTest < ActionDispatch::IntegrationTest
  test "should get seach" do
    get seach_seach_url
    assert_response :success
  end

end
