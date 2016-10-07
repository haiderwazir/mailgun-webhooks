require 'test_helper'

class WebhooksControllerTest < ActionDispatch::IntegrationTest
  test "should get clicked" do
    get webhooks_clicked_url
    assert_response :success
  end

  test "should get opened" do
    get webhooks_opened_url
    assert_response :success
  end

end
