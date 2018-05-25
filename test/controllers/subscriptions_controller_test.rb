require 'test_helper'

class SubscriptionsControllerTest < ActionDispatch::IntegrationTest
  test "should get send" do
    get subscriptions_send_url
    assert_response :success
  end

end
