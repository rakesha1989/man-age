require 'test_helper'

class PaybillsControllerTest < ActionController::TestCase
  setup do
    @paybill = paybills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paybills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paybill" do
    assert_difference('Paybill.count') do
      post :create, paybill: { amount: @paybill.amount, bill_no: @paybill.bill_no, description: @paybill.description, float: @paybill.float, payment_date: @paybill.payment_date, payment_method: @paybill.payment_method, refernce_no: @paybill.refernce_no, supplier_id: @paybill.supplier_id }
    end

    assert_redirected_to paybill_path(assigns(:paybill))
  end

  test "should show paybill" do
    get :show, id: @paybill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paybill
    assert_response :success
  end

  test "should update paybill" do
    patch :update, id: @paybill, paybill: { amount: @paybill.amount, bill_no: @paybill.bill_no, description: @paybill.description, float: @paybill.float, payment_date: @paybill.payment_date, payment_method: @paybill.payment_method, refernce_no: @paybill.refernce_no, supplier_id: @paybill.supplier_id }
    assert_redirected_to paybill_path(assigns(:paybill))
  end

  test "should destroy paybill" do
    assert_difference('Paybill.count', -1) do
      delete :destroy, id: @paybill
    end

    assert_redirected_to paybills_path
  end
end
