require 'test_helper'

class VerificationsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get verifications_edit_url
    assert_response :success
  end

  test "should get update" do
    get verifications_update_url
    assert_response :success
  end

end
