require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get admin_create_url
    assert_response :success
  end

  test "should get update" do
    get admin_update_url
    assert_response :success
  end

  test "should get index" do
    get admin_index_url
    assert_response :success
  end

  test "should get delete" do
    get admin_delete_url
    assert_response :success
  end

  test "should get new" do
    get admin_new_url
    assert_response :success
  end

end
