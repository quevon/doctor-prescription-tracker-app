require "test_helper"

class PrescriptionDrugsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get prescription_drugs_index_url
    assert_response :success
  end

  test "should get new" do
    get prescription_drugs_new_url
    assert_response :success
  end

  test "should get create" do
    get prescription_drugs_create_url
    assert_response :success
  end

  test "should get edit" do
    get prescription_drugs_edit_url
    assert_response :success
  end
end
