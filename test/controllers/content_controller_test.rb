require 'test_helper'

class ContentControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get content_show_url
    assert_response :success
  end

  test "should get vod" do
    get content_vod_url
    assert_response :success
  end

  test "should get live" do
    get content_live_url
    assert_response :success
  end

end
