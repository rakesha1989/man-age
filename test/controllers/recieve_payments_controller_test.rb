require 'test_helper'

class RecievePaymentsControllerTest < ActionController::TestCase
  setup do
    @recieve_payment = recieve_payments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recieve_payments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recieve_payment" do
    assert_difference('RecievePayment.count') do
      post :create, recieve_payment: { amount_recieved: @recieve_payment.amount_recieved, client_id: @recieve_payment.client_id, deposited_to: @recieve_payment.deposited_to, email: @recieve_payment.email, invoice_id: @recieve_payment.invoice_id, payment_date: @recieve_payment.payment_date, payment_method: @recieve_payment.payment_method, reference_no: @recieve_payment.reference_no }
    end

    assert_redirected_to recieve_payment_path(assigns(:recieve_payment))
  end

  test "should show recieve_payment" do
    get :show, id: @recieve_payment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recieve_payment
    assert_response :success
  end

  test "should update recieve_payment" do
    patch :update, id: @recieve_payment, recieve_payment: { amount_recieved: @recieve_payment.amount_recieved, client_id: @recieve_payment.client_id, deposited_to: @recieve_payment.deposited_to, email: @recieve_payment.email, invoice_id: @recieve_payment.invoice_id, payment_date: @recieve_payment.payment_date, payment_method: @recieve_payment.payment_method, reference_no: @recieve_payment.reference_no }
    assert_redirected_to recieve_payment_path(assigns(:recieve_payment))
  end

  test "should destroy recieve_payment" do
    assert_difference('RecievePayment.count', -1) do
      delete :destroy, id: @recieve_payment
    end

    assert_redirected_to recieve_payments_path
  end
end
