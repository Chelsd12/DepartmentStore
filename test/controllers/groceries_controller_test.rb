require 'test_helper'

class GroceriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get groceries_index_url
    assert_response :success
  end

  test "should get show" do
    get groceries_show_url
    assert_response :success
  end

  test "should get new" do
    get groceries_new_url
    assert_response :success
  end

  test "should get edit" do
    get groceries_edit_url
    assert_response :success
  end

end
