require 'test_helper'

class MetalitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @metalitem = metalitems(:one)
  end

  test "should get index" do
    get metalitems_url
    assert_response :success
  end

  test "should get new" do
    get new_metalitem_url
    assert_response :success
  end

  test "should create metalitem" do
    assert_difference('Metalitem.count') do
      post metalitems_url, params: { metalitem: { description: @metalitem.description, quantity: @metalitem.quantity, unit_price: @metalitem.unit_price } }
    end

    assert_redirected_to metalitem_url(Metalitem.last)
  end

  test "should show metalitem" do
    get metalitem_url(@metalitem)
    assert_response :success
  end

  test "should get edit" do
    get edit_metalitem_url(@metalitem)
    assert_response :success
  end

  test "should update metalitem" do
    patch metalitem_url(@metalitem), params: { metalitem: { description: @metalitem.description, quantity: @metalitem.quantity, unit_price: @metalitem.unit_price } }
    assert_redirected_to metalitem_url(@metalitem)
  end

  test "should destroy metalitem" do
    assert_difference('Metalitem.count', -1) do
      delete metalitem_url(@metalitem)
    end

    assert_redirected_to metalitems_url
  end
end
