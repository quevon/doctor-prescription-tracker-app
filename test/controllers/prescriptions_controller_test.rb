require "test_helper"

class PrescriptionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get prescriptions_index_url
    assert_response :success
  end

  test "should get new" do
    get prescriptions_new_url
    assert_response :success
  end

  test "should get create" do
    get prescriptions_create_url
    assert_response :success
  end

  test "should get edit" do
    get prescriptions_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get prescriptions_destroy_url
    assert_response :success
  end
end
