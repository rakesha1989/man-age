require 'test_helper'

class DespatchesControllerTest < ActionController::TestCase
  setup do
    @despatch = despatches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:despatches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create despatch" do
    assert_difference('Despatch.count') do
      post :create, despatch: { client_id: @despatch.client_id, d_c_number: @despatch.d_c_number, day: @despatch.day, product_id: @despatch.product_id, quantity: @despatch.quantity, unit: @despatch.unit }
    end

    assert_redirected_to despatch_path(assigns(:despatch))
  end

  test "should show despatch" do
    get :show, id: @despatch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @despatch
    assert_response :success
  end

  test "should update despatch" do
    patch :update, id: @despatch, despatch: { client_id: @despatch.client_id, d_c_number: @despatch.d_c_number, day: @despatch.day, product_id: @despatch.product_id, quantity: @despatch.quantity, unit: @despatch.unit }
    assert_redirected_to despatch_path(assigns(:despatch))
  end

  test "should destroy despatch" do
    assert_difference('Despatch.count', -1) do
      delete :destroy, id: @despatch
    end

    assert_redirected_to despatches_path
  end
end
