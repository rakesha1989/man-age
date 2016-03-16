require 'test_helper'

class AddstocksControllerTest < ActionController::TestCase
  setup do
    @addstock = addstocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addstocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create addstock" do
    assert_difference('Addstock.count') do
      post :create, addstock: { material_id: @addstock.material_id, stock: @addstock.stock, unit: @addstock.unit }
    end

    assert_redirected_to addstock_path(assigns(:addstock))
  end

  test "should show addstock" do
    get :show, id: @addstock
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @addstock
    assert_response :success
  end

  test "should update addstock" do
    patch :update, id: @addstock, addstock: { material_id: @addstock.material_id, stock: @addstock.stock, unit: @addstock.unit }
    assert_redirected_to addstock_path(assigns(:addstock))
  end

  test "should destroy addstock" do
    assert_difference('Addstock.count', -1) do
      delete :destroy, id: @addstock
    end

    assert_redirected_to addstocks_path
  end
end
