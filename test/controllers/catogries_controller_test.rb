require 'test_helper'

class CatogriesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get catogries_new_url
    assert_response :success
  end

  test "should get create" do
    get catogries_create_url
    assert_response :success
  end

  test "should get destroy" do
    get catogries_destroy_url
    assert_response :success
  end

  test "should get show" do
    get catogries_show_url
    assert_response :success
  end

  test "should get update" do
    get catogries_update_url
    assert_response :success
  end

  test "should get edit" do
    get catogries_edit_url
    assert_response :success
  end

end
