require 'test_helper'

class Api::V1::Test2ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_test2_index_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_test2_create_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_test2_show_url
    assert_response :success
  end

  test "should get edit" do
    get api_v1_test2_edit_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_test2_update_url
    assert_response :success
  end

  test "should get destory" do
    get api_v1_test2_destory_url
    assert_response :success
  end

end
