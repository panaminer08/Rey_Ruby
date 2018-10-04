require 'test_helper'

class StudentCohortsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get student_cohorts_edit_url
    assert_response :success
  end

  test "should get update" do
    get student_cohorts_update_url
    assert_response :success
  end

  test "should get new" do
    get student_cohorts_new_url
    assert_response :success
  end

  test "should get delete" do
    get student_cohorts_delete_url
    assert_response :success
  end

end
