require 'test_helper'

class UserparamControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get userparam_new_url
    assert_response :success
  end

  test "should get show" do
    get userparam_show_url
    assert_response :success
  end

  test "should get edit" do
    get userparam_edit_url
    assert_response :success
  end

end
