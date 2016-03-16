require 'test_helper'

class PurchaseOrdersControllerTest < ActionController::TestCase
  setup do
    @purchase_order = purchase_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:purchase_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create purchase_order" do
    assert_difference('PurchaseOrder.count') do
      post :create, purchase_order: { amount: @purchase_order.amount, description: @purchase_order.description, material_id: @purchase_order.material_id, message: @purchase_order.message, p_o_date: @purchase_order.p_o_date, quantity: @purchase_order.quantity, rate: @purchase_order.rate, ship_to: @purchase_order.ship_to, shipping_address: @purchase_order.shipping_address, supplier_id: @purchase_order.supplier_id, tax: @purchase_order.tax, unit: @purchase_order.unit }
    end

    assert_redirected_to purchase_order_path(assigns(:purchase_order))
  end

  test "should show purchase_order" do
    get :show, id: @purchase_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @purchase_order
    assert_response :success
  end

  test "should update purchase_order" do
    patch :update, id: @purchase_order, purchase_order: { amount: @purchase_order.amount, description: @purchase_order.description, material_id: @purchase_order.material_id, message: @purchase_order.message, p_o_date: @purchase_order.p_o_date, quantity: @purchase_order.quantity, rate: @purchase_order.rate, ship_to: @purchase_order.ship_to, shipping_address: @purchase_order.shipping_address, supplier_id: @purchase_order.supplier_id, tax: @purchase_order.tax, unit: @purchase_order.unit }
    assert_redirected_to purchase_order_path(assigns(:purchase_order))
  end

  test "should destroy purchase_order" do
    assert_difference('PurchaseOrder.count', -1) do
      delete :destroy, id: @purchase_order
    end

    assert_redirected_to purchase_orders_path
  end
end
