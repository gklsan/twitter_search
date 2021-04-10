require "test_helper"

class TwitterSearchControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get twitter_search_search_url
    assert_response :success
  end
end
