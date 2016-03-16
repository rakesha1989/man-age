require 'test_helper'

class MaterialProductsControllerTest < ActionController::TestCase
  setup do
    @material_product = material_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:material_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create material_product" do
    assert_difference('MaterialProduct.count') do
      post :create, material_product: { material_id: @material_product.material_id, product_id: @material_product.product_id }
    end

    assert_redirected_to material_product_path(assigns(:material_product))
  end

  test "should show material_product" do
    get :show, id: @material_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @material_product
    assert_response :success
  end

  test "should update material_product" do
    patch :update, id: @material_product, material_product: { material_id: @material_product.material_id, product_id: @material_product.product_id }
    assert_redirected_to material_product_path(assigns(:material_product))
  end

  test "should destroy material_product" do
    assert_difference('MaterialProduct.count', -1) do
      delete :destroy, id: @material_product
    end

    assert_redirected_to material_products_path
  end
end
